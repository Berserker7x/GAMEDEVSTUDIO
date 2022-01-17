import java.io.File;
import java.util.Date;

public class Offre {
    private Long id;
    private String titre;
    private String description;
    private String dateexpiraton;
    private File imagesoffre;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDateexpiraton() {
        return dateexpiraton;
    }

    public void setDateexpiraton(String dateexpiraton) {
        this.dateexpiraton = dateexpiraton;
    }

    public File getImagesoffre() {
        return imagesoffre;
    }

    public void setImagesoffre(File imagesoffre) {
        this.imagesoffre = imagesoffre;
    }

    public Offre(long l, String description, String dateexp, File image) {
        super();

    }

    public Offre() {
        super();

    }

    public Offre(long id, String titre, String description, String dateexpiraton, File imagesoffre) {
        super();
        this.id=id;
        this.titre = titre;
        this.description = description;
        this.dateexpiraton = dateexpiraton;
        this.imagesoffre = imagesoffre;
    }
}

