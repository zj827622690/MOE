import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.sql.*;

@ServerEndpoint("/sql")
public class Sql
{
    public void sqlcon(String[] args)
    {
        Connection con;
        String url = "jdbc:mysql://localhost:3306/MOE";
        String driver = "org.mariadb.jdbc.Driver";
        String user = "zy";
        String password = "aptx4869";

        try
        {
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,password);
            if (!con.isClosed())
                System.out.println("成功连接到数据库");
            Statement statement = con.createStatement();
            String sql = "select * from account";

            ResultSet rs = statement.executeQuery(sql);
            System.out.println("姓名"+"\t"+"密码");
            String name = null;
            String pass = null;

            while (rs.next())
            {
                name = rs.getString("user");
                pass = rs.getString("pass");
                System.out.println(name+"\t"+pass);
            }
            rs.close();
            con.close();
        }
        catch (ClassNotFoundException e)
        {
            System.out.println("没有找到Driver");
            e.printStackTrace();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            System.out.println("数据库成功获取数据");
        }
    }
}
