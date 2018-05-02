package DemoWebService;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.org.glassfish.gmbal.ParameterNames;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.jws.WebParam;

import javax.ws.rs.Path;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.POST;
import javax.ws.rs.PathParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import javax.ejb.Singleton;

@Singleton
@Stateless
@Path("/greeting/")
public class DemoWebServiceResource {

    @EJB

    @POST
    @Path("/post")
    @Consumes(MediaType.APPLICATION_JSON)
    public boolean createQues(@QueryParam("ndch") String ndch, @QueryParam("a") String a, @QueryParam("b") String b, @QueryParam("c") String c, @QueryParam("d") String d, @QueryParam("DA") String DA
    ) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/quizgamedb?useUnicode=true&characterEncoding=UTF-8", "root", "");
     
        int id = getNumberOfQues() + 1;
        PreparedStatement stm1 = con.prepareStatement("INSERT INTO cauhoi values(" + id + ",'" + ndch + "','" + a + "','" + b + "','" + c + "','" + d + "','" + DA + "')");
        stm1.executeUpdate();
        if (getDatabase(id) == "false") {
            con.close();
            return false;
        } else {
            con.close();
            return true;
        }      
    }

    @PUT
    @Path("/{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public boolean updateQues(@PathParam("id") int id, @QueryParam("ndch") String ndch, @QueryParam("a") String a, @QueryParam("b") String b, @QueryParam("c") String c, @QueryParam("d") String d, @QueryParam("DA") String DA
    ) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/quizgamedb?useUnicode=true&characterEncoding=UTF-8", "root", "");
        Statement stm = con.createStatement();
        ResultSet res = stm.executeQuery("SELECT * FROM cauhoi WHERE MACH = '" + id + "'");
        if (res.next()) {
            PreparedStatement stm1 = con.prepareStatement("UPDATE cauhoi SET NDCH = '" + ndch + "',A = '" + a + "'," + "B = '" + b + "',C = '" + c + "',D = '" + d + "',DA = '" + DA + "' WHERE MACH = '" + id + "'");
            stm1.executeUpdate();
            con.close();
            return true;
        } else {
            con.close();
            return false;
        }
    }

    @DELETE
    @Path("/{id}")
    public boolean deleteQues(@PathParam("id") int id) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/quizgamedb", "root", "");
        PreparedStatement stm = con.prepareStatement("DELETE FROM cauhoi WHERE MACH = '" + id + "'");
        stm.executeUpdate();
        if (getDatabase(id) == "false") {
            con.close();
            return true;
        } else {
            con.close();
            return false;
        }
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getDatabase(@PathParam("id") int id) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/quizgamedb", "root", "");
        Statement stm = con.createStatement();
        ResultSet res = stm.executeQuery("SELECT * FROM cauhoi WHERE MACH = '" + id + "'");
        if (res.next()) {
            CauHoi ch = new CauHoi(res.getInt(1), res.getString(2),
                    res.getString(3), res.getString(4), res.getString(5),
                    res.getString(6), res.getString(7));
            ObjectMapper om = new ObjectMapper();
            String json;
            json = om.writeValueAsString(ch);
            con.close();
            return json;
        }
        con.close();
        return "false";
    }

    @GET
    @Path("/getall")
    @Produces(MediaType.APPLICATION_JSON)
    public String getAllQues() throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/quizgamedb", "root", "");
        Statement stm = con.createStatement();
        String all = "[";
        int numOfQues = getNumberOfQues();
        for (int i = 1; i <= numOfQues; i++) {
            ResultSet res = stm.executeQuery("SELECT * FROM cauhoi WHERE MACH = '" + i + "'");
            if (res.next()) {
                CauHoi ch = new CauHoi(res.getInt(1), res.getString(2),
                        res.getString(3), res.getString(4), res.getString(5),
                        res.getString(6), res.getString(7));
                ObjectMapper om = new ObjectMapper();
                String json;
                json = om.writeValueAsString(ch);
                all += json + ",";
            }
        }
        con.close();
        return all.substring(0, all.length() - 1) + "]";
    }

    @GET
    @Path("/getnum")
    public int getNumberOfQues() throws ClassNotFoundException,
            InstantiationException, IllegalAccessException, SQLException {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/quizgamedb", "root", "");
        Statement stm = con.createStatement();
        ResultSet res = stm.executeQuery("SELECT COUNT(*) FROM cauhoi");
        if (res.next()) {
            int soCH = res.getInt(1);
            return soCH;
        } else {
            return 0;
        }
    }
}
