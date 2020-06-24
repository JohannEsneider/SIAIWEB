package ModeloDAO;

import Config.ConexionPDF;
import Modelo.PdfVO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PdfDAO {

    /*Metodo listar*/
    public ArrayList<PdfVO> Listar_PdfVO() {
        ArrayList<PdfVO> list = new ArrayList<PdfVO>();
        ConexionPDF conec = new ConexionPDF();
        String sql = "SELECT * FROM pdf;";
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                PdfVO vo = new PdfVO();
                vo.setCodigopdf(rs.getInt(1));
                vo.setNombrepdf(rs.getString(2));
                vo.setArchivopdf2(rs.getBytes(3));
                list.add(vo);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                rs.close();
               
            } catch (Exception ex) {
            }
        }
        return list;
    }


    /*Metodo agregar*/
    public void Agregar_PdfVO(PdfVO vo) {
        ConexionPDF conec = new ConexionPDF();
        String sql = "INSERT INTO pdf (codigopdf, nombrepdf, archivopdf) VALUES(?, ?, ?);";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setInt(1, vo.getCodigopdf());
            ps.setString(2, vo.getNombrepdf());
            ps.setBlob(3, vo.getArchivopdf());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                
            } catch (Exception ex) {
            }
        }
    }


    /*Metodo Modificar*/
    public void Modificar_PdfVO(PdfVO vo) {
        ConexionPDF conec = new ConexionPDF();
        String sql = "UPDATE pdf SET nombrepdf = ?, archivopdf = ? WHERE codigopdf = ?;";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setString(1, vo.getNombrepdf());
            ps.setBlob(2, vo.getArchivopdf());
            ps.setInt(3, vo.getCodigopdf());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                
            } catch (Exception ex) {
            }
        }
    }

    /*Metodo Modificar*/
    public void Modificar_PdfVO2(PdfVO vo) {
        ConexionPDF conec = new ConexionPDF();
        String sql = "UPDATE pdf SET nombrepdf = ? WHERE codigopdf = ?;";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setString(1, vo.getNombrepdf());
            ps.setInt(2, vo.getCodigopdf());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                
            } catch (Exception ex) {
            }
        }
    }

    /*Metodo Eliminar*/
    public void Eliminar_PdfVO(int id) {
        ConexionPDF conec = new ConexionPDF();
        String sql = "DELETE FROM pdf WHERE codigopdf = ?;";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                
            } catch (Exception ex) {
            }
        }
    }


    /*Metodo Consulta id*/
    public PdfVO getPdfVOById(int studentId) {
        PdfVO vo = new PdfVO();
        ConexionPDF db = new ConexionPDF ();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT * FROM pdf WHERE codigopdf = ?;";
        try {
            preparedStatement = db.getConnection().prepareStatement(query);
            preparedStatement.setInt(1, studentId);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                vo.setCodigopdf(rs.getInt(1));
                vo.setNombrepdf(rs.getString(2));
                vo.setArchivopdf2(rs.getBytes(3));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                rs.close();
                preparedStatement.close();
                
            } catch (Exception ex) {
            }
        }
        return vo;
    }

}
