/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Brands;
import Model.RacketSpecs;
import Model.RacketType;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class CategoryDAO extends DBContext {

    public List<RacketSpecs> getProduct(int id) {
        List<RacketSpecs> raList = new ArrayList<>();
        String sql = "select * from RacketSpecs s\n"
                + "                    join Brands b on s.brand_id = b.brand_id\n"
                + "                    where b.brand_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                RacketSpecs ra = new RacketSpecs();
                ra.setRacket_id(rs.getInt("racket_id"));

                Brands b = new Brands();
                b.setBrand_id(rs.getInt("brand_id"));
                b.setBrand_name(rs.getString("brand_name"));
                ra.setBrand(b);
//
//                RacketType rt = new RacketType();
//                rt.setRackettype_id(rs.getInt("rackettype_id"));
//                rt.setRackettype_name(rs.getString("rackettype_name"));
//                ra.setRacketType(rt);

                ra.setRacket_name(rs.getString("racket_name"));
                ra.setPrice(rs.getFloat("price"));
                ra.setImage_url(rs.getString("image_url"));
                ra.setYear_value(rs.getInt("year_value"));
                ra.setOrigin_country(rs.getString("origin_country"));
                raList.add(ra);
            }
            return raList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<RacketSpecs> getProduct2(int id) {
        List<RacketSpecs> raList = new ArrayList<>();
        String sql = "select * from RacketSpecs r \n"
                + "join RacketType c on r.rackettype_id = c.rackettype_id\n"
                + "where c.rackettype_id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                RacketSpecs ra = new RacketSpecs();
                ra.setRacket_id(rs.getInt("racket_id"));

//                Brands b = new Brands();
//                b.setBrand_id(rs.getInt("brand_id"));
//                b.setBrand_name(rs.getString("brand_name"));
//                ra.setBrand(b);
//
                RacketType rt = new RacketType();
                rt.setRackettype_id(rs.getInt("rackettype_id"));
                rt.setRackettype_name(rs.getString("rackettype_name"));
                ra.setRacketType(rt);

                ra.setRacket_name(rs.getString("racket_name"));
                ra.setPrice(rs.getFloat("price"));
                ra.setImage_url(rs.getString("image_url"));
                ra.setYear_value(rs.getInt("year_value"));
                ra.setOrigin_country(rs.getString("origin_country"));
                raList.add(ra);
            }
            return raList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<RacketSpecs> getProduct3(int id) {
        List<RacketSpecs> raList = new ArrayList<>();
        String sql = "select * from RacketSpecs s\n"
                + "join Brands b on s.brand_id = b.brand_id\n"
                + "join RacketType c on s.rackettype_id = c.rackettype_id\n"
                + "where s.racket_id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                RacketSpecs ra = new RacketSpecs();
                ra.setRacket_id(rs.getInt("racket_id"));

                Brands b = new Brands();
                b.setBrand_id(rs.getInt("brand_id"));
                b.setBrand_name(rs.getString("brand_name"));
                ra.setBrand(b);

                RacketType rt = new RacketType();
                rt.setRackettype_id(rs.getInt("rackettype_id"));
                rt.setRackettype_name(rs.getString("rackettype_name"));
                ra.setRacketType(rt);

                ra.setRacket_name(rs.getString("racket_name"));
                ra.setPrice(rs.getFloat("price"));
                ra.setImage_url(rs.getString("image_url"));
                ra.setYear_value(rs.getInt("year_value"));
                ra.setOrigin_country(rs.getString("origin_country"));
                ra.setQuantity(rs.getInt("quantity"));
                raList.add(ra);
            }
            return raList;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Brands> getBrands() {
        List<Brands> list = new ArrayList<>();
        String sql = "SELECT [brand_id]\n"
                + "      ,[brand_name]\n"
                + "  FROM [dbo].[Brands]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Brands b = new Brands();
                b.setBrand_id(rs.getInt("brand_id"));
                b.setBrand_name(rs.getString("brand_name"));
                list.add(b);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public List<RacketType> getRacketTypes() {
        List<RacketType> list = new ArrayList<>();
        String sql = "SELECT [rackettype_id]\n"
                + "      ,[rackettype_name]\n"
                + "  FROM [dbo].[RacketType]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                RacketType r = new RacketType();
                r.setRackettype_id(rs.getInt("rackettype_id"));
                r.setRackettype_name(rs.getString("rackettype_name"));
                list.add(r);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<RacketSpecs> getALL() {
        List<RacketSpecs> list = new ArrayList<>();
        String sql = "select * from RacketSpecs r \n"
                + "join Brands b on r.brand_id = b.brand_id\n"
                + "join RacketType c on r.rackettype_id = c.rackettype_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                RacketSpecs ra = new RacketSpecs();
                ra.setRacket_id(rs.getInt("racket_id"));

                Brands b = new Brands();
                b.setBrand_id(rs.getInt("brand_id"));
                b.setBrand_name(rs.getString("brand_name"));
                ra.setBrand(b);

                RacketType rt = new RacketType();
                rt.setRackettype_id(rs.getInt("rackettype_id"));
                rt.setRackettype_name(rs.getString("rackettype_name"));
                ra.setRacketType(rt);

                ra.setRacket_name(rs.getString("racket_name"));
                ra.setPrice(rs.getFloat("price"));
                ra.setImage_url(rs.getString("image_url"));
                ra.setYear_value(rs.getInt("year_value"));
                ra.setOrigin_country(rs.getString("origin_country"));
                ra.setQuantity(rs.getInt("quantity"));
                list.add(ra);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public List<RacketSpecs> getRacketSpecsesByName(String name) {
        List<RacketSpecs> list = new ArrayList<>();
        String sql = "select * from RacketSpecs r \n"
                + "                join Brands b on r.brand_id = b.brand_id\n"
                + "                join RacketType c on r.rackettype_id = c.rackettype_id\n"
                + "                where r.racket_name like '%"+name+"%'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                RacketSpecs ra = new RacketSpecs();
                ra.setRacket_id(rs.getInt("racket_id"));

                Brands b = new Brands();
                b.setBrand_id(rs.getInt("brand_id"));
                b.setBrand_name(rs.getString("brand_name"));
                ra.setBrand(b);

                RacketType rt = new RacketType();
                rt.setRackettype_id(rs.getInt("rackettype_id"));
                rt.setRackettype_name(rs.getString("rackettype_name"));
                ra.setRacketType(rt);

                ra.setRacket_name(rs.getString("racket_name"));
                ra.setPrice(rs.getFloat("price"));
                ra.setImage_url(rs.getString("image_url"));
                ra.setYear_value(rs.getInt("year_value"));
                ra.setOrigin_country(rs.getString("origin_country"));
                ra.setQuantity(rs.getInt("quantity"));
                list.add(ra);
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public boolean isExist(List<RacketSpecs> reRacketSpecses, int id) {
        boolean isExist = false;
        reRacketSpecses = getALL();
        for (RacketSpecs rs : reRacketSpecses) {
            if (rs.getRacket_id() == id) {
                isExist = true;
                break;
            }
        }
        return isExist;
    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[RacketSpecs]\n"
                + "      WHERE racket_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(int brandId, int rackettypeId, String name, float price, String image, int year, String origin, int quantity) {
        String sql = "INSERT INTO [dbo].[RacketSpecs]\n"
                + "           ([brand_id]\n"
                + "           ,[rackettype_id]\n"
                + "           ,[racket_name]\n"
                + "           ,[price]\n"
                + "           ,[image_url]\n"
                + "           ,[year_value]\n"
                + "           ,[origin_country]\n"
                + "           ,[Quantity])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, brandId);
            st.setInt(2, rackettypeId);
            st.setString(3, name);
            st.setFloat(4, price);
            st.setString(5, image);
            st.setInt(6, year);
            st.setString(7, origin);
            st.setInt(8, quantity);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("DAO.CategoryDAO.insert()" + e);
        }
    }

    public void update(int raketId, int brandId, int rackettypeId, String name, float price, String image, int year, String origin, int quantity) {
        String sql = """
                     UPDATE [dbo].[RacketSpecs]
                     SET[brand_id] = ?
                     ,[rackettype_id] = ?
                     ,[racket_name] = ?
                     ,[price] = ?
                     ,[image_url] = ?
                     ,[year_value] = ?
                     ,[origin_country] = ?
                     ,[Quantity] = ?
                     WHERE racket_id = ?""";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, brandId);
            st.setInt(2, rackettypeId);
            st.setString(3, name);
            st.setFloat(4, price);
            st.setString(5, image);
            st.setInt(6, year);
            st.setString(7, origin);
            st.setInt(8, quantity);
            st.setInt(9, raketId);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public RacketSpecs getRacketSpecsByID(int id) {
        List<RacketSpecs> racketSpecses = getALL();
        for (RacketSpecs ra : racketSpecses) {
            if (ra.getRacket_id() == id) {
                return ra;
            }
        }
        return null;
    }

    public static void main(String[] args) {
        CategoryDAO c = new CategoryDAO();
        List<RacketSpecs> list = c.getRacketSpecsesByName("Yonex");
        for (RacketSpecs r : list) {
            System.out.println(r.toString());
        }
    }
}
