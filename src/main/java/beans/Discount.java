package beans;

import DAO.FormatedPriceDAO;

import java.sql.Date;
import java.sql.Timestamp;

public class Discount {
    private int id;
    private String maGiamGia;
    private String hinhThucGiam;
    private Timestamp dateStart;
    private Timestamp dateEnd;
    private long giamGia;
    private String dateS;
    private String dateE;
    public Discount(int id, String maGiamGia, String hinhThucGiam, Timestamp dateStart, Timestamp dateEnd, long giamGia) {
        this.id = id;
        this.maGiamGia = maGiamGia;
        this.hinhThucGiam = hinhThucGiam;
        this.dateStart = dateStart;
        this.dateEnd = dateEnd;
        this.giamGia = giamGia;
    }

    public Discount(int id, String maGiamGia, String hinhThucGiam, String dateS, String dateE, long giamGia) {
        this.id = id;
        this.maGiamGia = maGiamGia;
        this.hinhThucGiam = hinhThucGiam;
        this.giamGia = giamGia;
        this.dateS = dateS;
        this.dateE = dateE;
    }

    public String getDateS() {
        return dateS;
    }

    public void setDateS(String dateS) {
        this.dateS = dateS;
    }

    public String getDateE() {
        return dateE;
    }

    public void setDateE(String dateE) {
        this.dateE = dateE;
    }

    public String currentFormatGia() {
        return FormatedPriceDAO.formatedGia(getGiamGia());
    }
    public long getGiamGia() {
        return giamGia;
    }

    public void setGiamGia(long giamGia) {
        this.giamGia = giamGia;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaGiamGia() {
        return maGiamGia;
    }

    public void setMaGiamGia(String maGiamGia) {
        this.maGiamGia = maGiamGia;
    }

    public String getHinhThucGiam() {
        return hinhThucGiam;
    }

    public void setHinhThucGiam(String hinhThucGiam) {
        this.hinhThucGiam = hinhThucGiam;
    }

    public Timestamp getDateStart() {
        return dateStart;
    }

    public void setDateStart(Timestamp dateStart) {
        this.dateStart = dateStart;
    }

    public Timestamp getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(Timestamp dateEnd) {
        this.dateEnd = dateEnd;
    }
}
