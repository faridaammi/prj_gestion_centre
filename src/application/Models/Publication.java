package application.Models;

public class Publication {
    private int id_publication;
    private String titre_publication;
    private String contenu_publication;

    public Publication(){}
    public Publication(int Id_publication, String Titre_publication,String Contenu_publication){

        this.id_publication = Id_publication;
        this.titre_publication = Titre_publication;
        this.contenu_publication = Contenu_publication;
    }

    public int getId_publication() {
        return id_publication;
    }

    public void setId_publication(int id_publication) {
        this.id_publication = id_publication;
    }

    public String getTitre_publication() {
        return titre_publication;
    }

    public void setTitre_publication(String titre_publication) {
        this.titre_publication = titre_publication;
    }

    public String getContenu_publication() {
        return contenu_publication;
    }

    public void setContenu_publication(String contenu_publication) {
        this.contenu_publication = contenu_publication;
    }
}
