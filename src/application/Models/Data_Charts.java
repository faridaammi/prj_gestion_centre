package application.Models;

import java.util.ArrayList;

public class Data_Charts {
    public String Mois;
    public int nbreeservationsparmois;

    public Data_Charts(String mois, int nbrreservation) {
        this.Mois = mois;
        this.nbreeservationsparmois = nbrreservation;
    }
}