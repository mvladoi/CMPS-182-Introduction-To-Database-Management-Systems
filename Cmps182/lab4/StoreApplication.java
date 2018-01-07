

import java.sql.*;
import java.util.*;








public class StoreApplication {

	/**
	 * Return a list of phone numbers of customers, given a first name and
	 * last name.
	 */
	public List<String> getCustomerPhoneFromFirstLastName(Connection con,
			String firstName, String lastName) {
		List<String> result = new ArrayList<String>();
        
        try{
        PreparedStatement newStatement = con.prepareStatement("SELECT dv_address.phone FROM dv_address, mg_customers WHERE mg_customers.first_name = ? AND mg_customers.last_name = ? AND  dv_address.address_id = mg_customers.address_id");
        
        newStatement.setString(1, firstName);
        newStatement.setString(2, lastName);
        
        ResultSet newResult = newStatement.executeQuery();
        
        while (newResult.next()){
            result.add(newResult.getString(1));
        }
        
        newResult.close();
        newStatement.close();
            
        }catch (SQLException e){
            System.err.println("Exception thrown in getCustomerPhoneFromFirstLastName");
            System.exit(1);}
        
        return result;
        
    }









	/**
	 * Return list of film titles whose length  is equal to or greater
	 * than the minimum length, and less than or equal to the maximum
	 * length.
	 */
    public List<String> getFilmTitlesBasedOnLengthRange(Connection con, int minLength, int maxLength){
        List<String> result = new ArrayList<String>();
        try{
    
        PreparedStatement newStatement = con.prepareStatement("SELECT title FROM dv_film WHERE length >= ? AND length <= ? ");
        
        newStatement.setInt(1, minLength);
        newStatement.setInt(2, maxLength);
        
        ResultSet newResult = newStatement.executeQuery();
        
        while (newResult.next()){
            result.add(newResult.getString(1));
        }
        
        newResult.close();
        newStatement.close();
        
		
	}catch (SQLException e){
        System.err.println("Exception thrown in getFilmTitlesBasedOnLengthRange");
        System.exit(1);}
        
        return result;
    
    }






    

	/**
	 * Return the number of customers that live in a given district and
	 * have the given active status.
	 */
	public final int countCustomersInDistrict(Connection con,
			String districtName, boolean active) {
		int result = -1;
        
        try{
        PreparedStatement newStatement = con.prepareStatement("select count(x) from mg_customers x, dv_address y where x.address_id = y.address_id AND y.district = ? AND x.active = ?;");
        
        newStatement.setString(1, districtName);
        newStatement.setBoolean(2, active);
        
        ResultSet newResult = newStatement.executeQuery();
        
        while (newResult.next()){
        result = newResult.getInt(1);
        }
        
        
        newResult.close();
        newStatement.close();
        
        }catch (SQLException e){
            System.err.println("Exception thrown in countCustomersInDistrict");
            System.exit(1);}
        
        return result;
        
    }










	/**
	 * Add a film to the inventory, given its title, description,
	 * length, and rating.
	 *
	 * Your query will need to cast the rating parameter to the
	 * enumerared type mpaa_rating. Whereas an uncast parameter is
	 * simply a question mark, casting would look like ?::mpaa_rating 
	 */
	public void insertFilmIntoInventory(Connection con, String
			title, String description, int length, String rating) {
        
        try{
        PreparedStatement newStatement = con.prepareStatement("insert into dv_film (title, description, length, rating) values (?, ?, ?, cast(? as mpaa_rating));");
        
        
        newStatement.setString(1, title);
        newStatement.setString(2, description);
        newStatement.setInt(3, length);
        newStatement.setString(4, rating);
        
        newStatement.execute();
        newStatement.close();
        
        }catch (SQLException e){
            System.err.println("Exception thrown in insertFilmIntoInventory");
            System.exit(1);}
        
        
    }



	/**
	 * Constructor
	 */
	public StoreApplication()
	{}

};
