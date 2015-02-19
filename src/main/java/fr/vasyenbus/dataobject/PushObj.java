package fr.vasyenbus.dataobject;

/**
 * Created by olivier on 11/02/15.
 */
public class PushObj {
    private Integer id;
    private String srcImgBackground;
    private String villeDepart;
    private String villeArrivee;
    private Float prix;
    private String linkAllerVoir;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSrcImgBackground() {
        return srcImgBackground;
    }

    public void setSrcImgBackground(String srcImgBackground) {
        this.srcImgBackground = srcImgBackground;
    }

    public String getVilleDepart() {
        return villeDepart;
    }

    public void setVilleDepart(String villeDepart) {
        this.villeDepart = villeDepart;
    }

    public String getVilleArrivee() {
        return villeArrivee;
    }

    public void setVilleArrivee(String villeArrivee) {
        this.villeArrivee = villeArrivee;
    }

    public Float getPrix() {
        return prix;
    }

    public void setPrix(Float prix) {
        this.prix = prix;
    }

    public String getLinkAllerVoir() {
        return linkAllerVoir;
    }

    public void setLinkAllerVoir(String linkAllerVoir) {
        this.linkAllerVoir = linkAllerVoir;
    }

    @Override
    public String toString() {
        return "PushObj{" +
                "id=" + id +
                ", srcImgBackground='" + srcImgBackground + '\'' +
                ", villeDepart='" + villeDepart + '\'' +
                ", villeArrivee='" + villeArrivee + '\'' +
                ", prix=" + prix +
                ", linkAllerVoir='" + linkAllerVoir + '\'' +
                '}';
    }
}
