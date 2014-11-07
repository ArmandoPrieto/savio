package common

import org.springframework.http.HttpStatus
import grails.converters.JSON
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.MultipartFile
import java.awt.image.BufferedImage

import org.codehaus.groovy.grails.io.support.ResourceLoader
import org.imgscalr.Scalr
import javax.imageio.ImageIO
import org.imgscalr.Scalr.Method

class ImageController {
	
	def crop(){
		
		if (request instanceof MultipartHttpServletRequest){
			
			for(filename in request.getFileNames()){
				MultipartFile file = request.getFile(filename)
				
				
			}
			
		
			}
		
		/*
	imgUrl 		// your image path (the one we recieved after successfull upload)
				
	imgInitW  	// your image original width (the one we recieved after upload)
	imgInitH 	// your image original height (the one we recieved after upload)

	imgW 		// your new scaled image width
	imgH 		// your new scaled image height

	imgX1 		// top left corner of the cropped image in relation to scaled image
	imgY1 		// top left corner of the cropped image in relation to scaled image

	cropW 		// cropped image width
	cropH 		// cropped image height
	
	*/
		
		def imgInitW = params.imgInitW //=640
		def imgInitH = params.imgInitH //=480
		
		def imgUrl = params.imgUrl //=http://localhost:8080/savioWebPage/images/uploads/5a8d5c55-cf75-485b-93e5-cf7fc0957f40.JPG
		
		def imgH = params.imgH //=330
		def imgW = params.imgW //=440
		
		def imgY1 = params.imgY1 //=40 
		def imgX1 = params.imgX1 //=20 
		
		def cropH = params.cropH //=250
		def cropW = params.cropW //=400
		
		String storageDirectory = servletContext.getRealPath(grailsApplication.config.file.upload.directory)
		def token = params.imgUrl.split("\\/");
		String filenameBase =token[token.size()-1]
		def nameAndExtension = filenameBase.split("\\.")
		String extension = nameAndExtension[nameAndExtension.size()-1]
		File newFile = new File("$storageDirectory/$filenameBase")
		
		BufferedImage img = ImageIO.read(newFile);
		
		BufferedImage scaledImg = Scalr.resize(img, Method.QUALITY, Float.parseFloat(imgW).round(), Float.parseFloat(imgH).round());
		scaledImg = Scalr.crop(scaledImg, Float.parseFloat(imgX1).round(), Float.parseFloat(imgY1).round(), Float.parseFloat(cropW).round(), Float.parseFloat(cropH).round(), null)
		
		storageDirectory = servletContext.getRealPath(grailsApplication.config.file.upload.directory)
		File cropFile = new File("$storageDirectory/crop-$filenameBase")
		ImageIO.write(scaledImg, extension, cropFile)
	
	/*	
		{
			"status":"success",
			"url":"path/croppedImg.jpg"
		}
		
		{
			"status":"error",
			"message":"your error message text"
		}
		*/
		render(["status":"success",
			"url": g.resource(dir: grailsApplication.config.file.upload.directory, file: "crop-$filenameBase", absolute: true)] as grails.converters.JSON)
	}
	def upload() {
		
		switch(request.method){
			case "GET":
			
				def results = []
				Image.findAll().each { Image picture ->
					results << [
							name: picture.originalFilename,
							size: picture.fileSize,
							url: createLink(controller:'image', action:'picture', id: picture.id),
							thumbnail_url: createLink(controller:'image', action:'thumbnail', id: picture.id),
							delete_url: createLink(controller:'image', action:'delete', id: picture.id),
							delete_type: "DELETE"
					]
				}
				render results as JSON
				break;
			case "POST":
			
				def results = []
				if (request instanceof MultipartHttpServletRequest){
					
					for(filename in request.getFileNames()){
						MultipartFile file = request.getFile(filename)

						String newFilenameBase = UUID.randomUUID().toString()
						String originalFileExtension = file.originalFilename.substring(file.originalFilename.lastIndexOf("."))
						String newFilename = newFilenameBase + originalFileExtension
						
						
						String storageDirectory = servletContext.getRealPath(grailsApplication.config.file.upload.directory)
						
						File newFile = new File("$storageDirectory/$newFilename")
						file.transferTo(newFile)
						BufferedImage original = ImageIO.read(newFile);
						
						int width          = original.getWidth();
						int height         = original.getHeight();
						
						//BufferedImage thumbnail = Scalr.resize(ImageIO.read(newFile), 290);
						//String thumbnailFilename = newFilenameBase + '-thumbnail.png'
						//File thumbnailFile = new File("$storageDirectory/$thumbnailFilename")
						//ImageIO.write(thumbnail, 'png', thumbnailFile)

					/*	Image picture = new Image(
								originalFilename: file.originalFilename,
								thumbnailFilename: thumbnailFilename,
								newFilename: newFilename,
								fileSize: file.size
						).save()
				*/
				
				render([status:"success",
					url: g.resource(dir: 'images/uploads', file: newFilename, absolute: true),
					width:width,
					height:height] as grails.converters.JSON)
				
			/*	{
					"status":"error",
					"message":"your error message text"
				}*/
					/*	results << [
								name: picture.originalFilename,
								size: picture.fileSize,
								url: createLink(controller:'image', action:'picture', id: picture.id),
								thumbnail_url: createLink(controller:'image', action:'thumbnail', id: picture.id),
								delete_url: createLink(controller:'image', action:'delete', id: picture.id),
								delete_type: "DELETE"
						]*/
					}
				}

				render results as JSON
				break;
			default: render status: HttpStatus.METHOD_NOT_ALLOWED.value()
		}
	}

	def picture(){
		def pic = Image.get(params.id)
		File picFile = new File("${grailsApplication.config.file.upload.directory?:'/tmp'}/${pic.newFilename}")
		response.contentType = 'image/jpeg'
		response.outputStream << new FileInputStream(picFile)
		response.outputStream.flush()
	}

	def thumbnail(){
		def pic = Image.get(params.id)
		File picFile = new File("${grailsApplication.config.file.upload.directory?:'/tmp'}/${pic.thumbnailFilename}")
		response.contentType = 'image/png'
		response.outputStream << new FileInputStream(picFile)
		response.outputStream.flush()
	}

	def delete(){
		def pic = Image.get(params.id)
		File picFile = new File("${grailsApplication.config.file.upload.directory?:'/tmp'}/${pic.newFilename}")
		picFile.delete()
		File thumbnailFile = new File("${grailsApplication.config.file.upload.directory?:'/tmp'}/${pic.thumbnailFilename}")
		thumbnailFile.delete()
		pic.delete()

		def result = [success: true]
		render result as JSON
	}
}