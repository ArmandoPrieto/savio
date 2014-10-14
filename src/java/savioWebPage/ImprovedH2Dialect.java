package savioWebPage;

import org.hibernate.dialect.H2Dialect;

import org.hibernate.dialect.MySQL5InnoDBDialect;

//This call is added to solve a hiberbate bug message error each time the app is loaded

	public class ImprovedH2Dialect extends MySQL5InnoDBDialect {
	    @Override
	    public String getDropSequenceString(String sequenceName) {
	        return "drop sequence if exists " + sequenceName;
	    }

	    @Override
	    public boolean dropConstraints() {
	        return false;
	    }
	}

