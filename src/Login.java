import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.sql.*;

@ServerEndpoint("/login")
public class Login {

    int get_flag = 0;
    String name;
    String pass;
    int flag=0;
    Session session;


    public void sqlsearch()
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
            String sql = "select * from account where user=\""+name+"\" and pass=\""+pass+"\";" ;

            ResultSet rs = statement.executeQuery(sql);
            System.out.println("姓名"+"\t"+"密码");
            String name = null;
            String pass = null;

            while (rs.next())
            {
                flag++;
                name = rs.getString("user");
                pass = rs.getString("pass");
                System.out.println(name+"\t"+pass);
            }
            rs.close();
            con.close();
            System.out.println(session.toString());
            if (flag == 1)
            {
                System.out.println("用户存在");
                this.session.getBasicRemote().sendText("用户存在");
                flag=0;
            }
            else
            {
                System.out.println("用户不存在");
                this.session.getBasicRemote().sendText("用户不存在");
            }
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

    @OnMessage
    public void onMessage(String message)
    {
        if (get_flag == 0)
        {
            name = message;
            get_flag++;
        }
        else if (get_flag == 1)
        {
            pass = message;
            get_flag++;
        }
        if (get_flag == 2)
        {
            sqlsearch();
            get_flag=0;
        }
    }

    @OnOpen
    public void onOpen(Session session)
    {
        this.session = session;
        System.out.println(session.toString());
    }
}
