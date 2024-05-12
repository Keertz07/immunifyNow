package com.tech.covidVaccination.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tech.covidVaccination.bo.BookBo;
import com.tech.covidVaccination.bo.CenterBo;
import com.tech.covidVaccination.bo.Userbo;
import com.tech.covidVaccination.utils.DataBaseConnection;

@Repository
public class DaoImpl implements Dao{
	@Autowired
	DataBaseConnection db;
	@Override
	public Userbo loginUser(Userbo userbo) {
		Userbo response=null;
		try {
			Connection con=db.dbConnection();
			Statement st=con.createStatement();
			String sql="select * from login where email='"+userbo.getEmailId()+"'";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				response=new Userbo();
				
				response.setEmailId(rs.getString(2));
				response.setPassword(rs.getString(3));
				
			}
			st.close();
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return response;
	}
	@Override
	public long createUser(Userbo userbo) {
		long status = 0;
		try {
			Connection con = db.dbConnection();
			Statement st = con.createStatement();
			String str = "insert into user(id,name,email,password,usertype,mobileno,city) values("+userbo.getId()+",'"+userbo.getName()+"','"+userbo.getEmailId()+"','"+userbo.getPassword()+"','user',"+userbo.getMobileno()+",'"+userbo.getCity()+"')";
	       st.execute(str);
	       status = st.getUpdateCount();
	       if (0 < status) {
				String sqlLogin = "insert into login(email,password,usertype) values('" + userbo.getEmailId() + "','"+userbo.getPassword() + "','user')";

				Statement st1 = con.createStatement();
				int loginSuccess = st1.executeUpdate(sqlLogin);
				if (0 < loginSuccess) {
					return status; 
				}

			}
		    
		} catch(Exception e) {
			
		}
		return status;
	}
	@Override
	public long addcenterBo(CenterBo centerBobo) {
		long status = 0;
		try {
			Connection con = db.dbConnection();
			Statement st = con.createStatement();
			String str = "insert into centerBo(id,name,mobileno,slotno,city,pincode) values("+centerBobo.getId()+",'"+centerBobo.getName()+"',"+centerBobo.getMobileno()+","+centerBobo.getSlotno()+",'"+centerBobo.getCity()+"',"+centerBobo.getPincode()+")";
			st.execute(str);
			status = st.getUpdateCount();
			return status;
		    
		} catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	@Override
	public List<CenterBo> viewcenterBo() {
		List<CenterBo> list = new ArrayList<CenterBo>();
		long sno = 0;
		try {
			Connection con = db.dbConnection();
			Statement st = con.createStatement();
			String str = "select * from centerBo";
			ResultSet rs = null;
			rs=st.executeQuery(str);
			while(rs.next()) {
				CenterBo centerBobo = new CenterBo();
				centerBobo.setSno(++sno);
				centerBobo.setId(rs.getInt(1));
				centerBobo.setName(rs.getString(2));
				centerBobo.setMobileno(rs.getLong(3));
				centerBobo.setSlotno(rs.getInt(4));
				centerBobo.setCity(rs.getString(5));
				centerBobo.setPincode(rs.getInt(6));
				list.add(centerBobo);
			}
		} catch(Exception e) {
			
		}
		return list;
	
	}
	@Override
	public List<BookBo> bookdetails() {
	    List<BookBo> list = new ArrayList<BookBo>();
	    try {
	        Connection con = db.dbConnection();
	        Statement st = con.createStatement();
	        String str = "SELECT name FROM centerBo ";
	        ResultSet rs = st.executeQuery(str);
	        while (rs.next()) {
	            BookBo bookBo = new BookBo();
	            bookBo.setName(rs.getString(1)); 
	            list.add(bookBo);
	        }
	        con.close(); // Close the connection after usage
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return list;
	}
	
	@Override
	public long bookSlot(BookBo bookbo){
	    long status = 0;
	    try {
	        Connection con = db.dbConnection();
	        Statement st = con.createStatement();
	        String bookQuery = "insert into book(id,name,username,mobileno) values(" + bookbo.getBookid() + ",'"
	                + bookbo.getName() + "','" + bookbo.getUsername() + "'," + bookbo.getMobileno() + ")";
	        st.execute(bookQuery);
	        status = st.getUpdateCount();
	        if (status > 0) {
	        	String updateSlotQuery = "update centerBo set slotno = slotno - 1 where name = '" + bookbo.getName() + "' and slotno > 0";
	            Statement updateSlotStatement = con.createStatement();
	            int updateSlotStatus = updateSlotStatement.executeUpdate(updateSlotQuery);
	            if (updateSlotStatus > 0) {
	                return status;
	            } else {
	                return -1; 
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return status;
	}

	
	public void scheduleSlotResetTask() {
        Timer timer = new Timer();
        timer.scheduleAtFixedRate(new TimerTask() {
            @Override
            public void run() {
                try {
                    Connection con = db.dbConnection();
                    Statement st = con.createStatement();
                    String resetSlotQuery = "update centerBo set slotno = max_slots";
                    st.executeUpdate(resetSlotQuery);
                    System.out.println("Slots reset successfully.");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }, 0, 24 * 60 * 60 * 1000); // Run every 24 hours
    }
	@Override
	public int updateCenter(CenterBo centerBo) {
	    int status = 0;
	    try {
	        
	        Connection con = null;
	        PreparedStatement ps = null;
	        try {
	            try {
					con = db.dbConnection();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	            String sql = "UPDATE centerBo SET name=?, mobileno=?, slotno=?, city=?, pincode=? WHERE id=?";
	            ps = con.prepareStatement(sql);
	            ps.setString(1, centerBo.getName());
	            ps.setLong(2, centerBo.getMobileno());
	            ps.setInt(3, centerBo.getSlotno());
	            ps.setString(4, centerBo.getCity());
	            ps.setInt(5, centerBo.getPincode());
	            ps.setInt(6, centerBo.getId());
	            status = ps.executeUpdate();
	        } finally {
	            if (ps != null) {
	                ps.close();
	            }
	            if (con != null) {
	                con.close();
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return status;
	}

	@Override
	public CenterBo getCenterById(CenterBo centerBo)  {
		CenterBo center = null;
		
		try {
			Connection con = db.dbConnection();
		
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from centerBo where id=" +centerBo.getId()+ " "); // 1
		while (rs.next()) {
			center = new CenterBo();
			center.setId(rs.getInt(1)); 
			center.setName(rs.getString(2));
			center.setMobileno(rs.getLong(3));
			center.setSlotno(rs.getInt(4));
			center.setCity(rs.getString(5));
			center.setPincode(rs.getInt(6));

		}
		st.close();
		con.close();

} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
		return center;
	

}
	@Override
	public int deleteCenter(CenterBo centerBo) {
		
		int status = 0;
		try {
			Connection con = db.dbConnection();
			Statement st = con.createStatement();
	       String str="Delete from centerBo where id="+centerBo.getId();
			st.execute(str);
  	       status = st.getUpdateCount();
	      if (0 < status) {
	    	   System.out.println("Center is Deleted");
			}
		    
		} catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
