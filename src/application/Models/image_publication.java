package application.Models;

public class image_publication extends Publication{
    private int id_image_publication;

    public image_publication() {}

    public image_publication(int Id_publication, String Titre_publication, String Contenu_publication, int id_image_publication) {
        super(Id_publication, Titre_publication, Contenu_publication);
        this.id_image_publication = id_image_publication;
    }

    public int getId_image_publication() {
        return id_image_publication;
    }

    public void setId_image_publication(int id_image_publication) {
        this.id_image_publication = id_image_publication;
    }
}
