package cab.snapp.passenger.data.models.instance_state;

public class MapInstanceState {
    private double destinationLatitude;
    private double destinationLongitude;
    private double latitude;
    private double longitude;
    private double originLatitude;
    private double originLongitude;
    private double secondDestLatitude;
    private double secondDestLongitude;
    private float zoom;

    public MapInstanceState(double d, double d2, float f) {
        this.latitude = d;
        this.longitude = d2;
        this.zoom = f;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public void setLatitude(double d) {
        this.latitude = d;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void setLongitude(double d) {
        this.longitude = d;
    }

    public float getZoom() {
        return this.zoom;
    }

    public void setZoom(float f) {
        this.zoom = f;
    }

    public double[] getOrigin() {
        return new double[]{this.originLatitude, this.originLongitude};
    }

    public double[] getDestination() {
        return new double[]{this.destinationLatitude, this.destinationLongitude};
    }

    public double[] getSecondDestination() {
        return new double[]{this.secondDestLatitude, this.secondDestLongitude};
    }

    public void setOrigin(double d, double d2) {
        this.originLatitude = d;
        this.originLongitude = d2;
    }

    public void setDestination(double d, double d2) {
        this.destinationLatitude = d;
        this.destinationLongitude = d2;
    }

    public void setSecondDestination(double d, double d2) {
        this.secondDestLatitude = d;
        this.secondDestLongitude = d2;
    }
}
