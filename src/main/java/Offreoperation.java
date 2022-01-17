import java.util.ArrayList;

public class Offreoperation {
    private ArrayList<Offre> ofre =new ArrayList<Offre>();//BD

    public ArrayList<Offre> getOffre() {
        return ofre;
    }

    public void setOffre(ArrayList<Offre> offre) {
        this.ofre = offre;
    }
    public  void add(Offre of){
        ofre.add(of);
    }
    public void remove(Long id){
        for(Offre o:ofre){
            if(o.getId()==id){
                ofre.remove(o);
                break;
            }
        }


    }
    public ArrayList<Offre> getAlloffers(){
        return ofre;

    }
}
