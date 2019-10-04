package cab.snapp.passenger.data.models;

import cab.snapp.passenger.data.models.ride_rating.RideRatingReason;
import cab.snapp.passenger.data_access_layer.network.responses.RideRatingReasonsResponse;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RideRatingModel {
    private String comment;
    private DriverInfo driverInfo;
    private RideRatingReasonsResponse rateReasonModel;
    private RideInformation rideInformation;
    private Set<Integer> selectedNegativeReasons = new HashSet();
    private Set<Integer> selectedPositiveReasons = new HashSet();
    private int starRate;

    public void setFinishRideModels(DriverInfo driverInfo2, RideInformation rideInformation2) {
        this.driverInfo = driverInfo2;
        this.rideInformation = rideInformation2;
    }

    public void setRatingReasonsResponse(RideRatingReasonsResponse rideRatingReasonsResponse) {
        this.rateReasonModel = rideRatingReasonsResponse;
    }

    public int getStarRate() {
        return this.starRate;
    }

    public void setStarRate(int i) {
        this.starRate = i;
    }

    public String getDriverImageUrl() {
        DriverInfo driverInfo2 = this.driverInfo;
        return (driverInfo2 == null || driverInfo2.getImageUrl() == null) ? "" : this.driverInfo.getImageUrl();
    }

    public String getDriverName() {
        DriverInfo driverInfo2 = this.driverInfo;
        return (driverInfo2 == null || driverInfo2.getName() == null) ? "" : this.driverInfo.getName();
    }

    public String getDriverVehicle() {
        DriverInfo driverInfo2 = this.driverInfo;
        return (driverInfo2 == null || driverInfo2.getVehicleModel() == null) ? "" : this.driverInfo.getVehicleModel();
    }

    public String getRideTitle() {
        RideInformation rideInformation2 = this.rideInformation;
        return (rideInformation2 == null || rideInformation2.getTitle() == null) ? "" : this.rideInformation.getTitle();
    }

    public String getRideDestination() {
        RideInformation rideInformation2 = this.rideInformation;
        return (rideInformation2 == null || rideInformation2.getDestination() == null || this.rideInformation.getDestination().getFormattedAddress() == null) ? "" : this.rideInformation.getDestination().getFormattedAddress();
    }

    public List<RideRatingReason> getPositiveReasons() {
        RideRatingReasonsResponse rideRatingReasonsResponse = this.rateReasonModel;
        if (rideRatingReasonsResponse == null || rideRatingReasonsResponse.getPositiveReasons() == null) {
            return new ArrayList();
        }
        return this.rateReasonModel.getPositiveReasons();
    }

    public List<RideRatingReason> getNegativeReasons() {
        RideRatingReasonsResponse rideRatingReasonsResponse = this.rateReasonModel;
        if (rideRatingReasonsResponse == null || rideRatingReasonsResponse.getNegativeReasons() == null) {
            return new ArrayList();
        }
        return this.rateReasonModel.getNegativeReasons();
    }

    public void addSelectedReason(int i, boolean z) {
        if (z) {
            this.selectedNegativeReasons.add(Integer.valueOf(i));
        } else {
            this.selectedPositiveReasons.add(Integer.valueOf(i));
        }
    }

    public void removeSelectedReason(int i, boolean z) {
        if (z) {
            this.selectedNegativeReasons.remove(Integer.valueOf(i));
        } else {
            this.selectedPositiveReasons.remove(Integer.valueOf(i));
        }
    }

    public void toggleSelectedReason(int i, boolean z) {
        if (isSelected(i)) {
            removeSelectedReason(i, z);
        } else {
            addSelectedReason(i, z);
        }
    }

    public boolean isSelected(int i) {
        return this.selectedNegativeReasons.contains(Integer.valueOf(i)) || this.selectedPositiveReasons.contains(Integer.valueOf(i));
    }

    public int getNumberOfSelectedReasons(boolean z) {
        if (z) {
            return this.selectedNegativeReasons.size();
        }
        return this.selectedPositiveReasons.size();
    }

    public ArrayList<Integer> getSelectedReasons() {
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.addAll(this.selectedNegativeReasons);
        arrayList.addAll(this.selectedPositiveReasons);
        return arrayList;
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public String getRideId() {
        RideInformation rideInformation2 = this.rideInformation;
        return (rideInformation2 == null || rideInformation2.getRideId() == null) ? "" : this.rideInformation.getRideId();
    }

    public boolean hasReasons() {
        return (getPositiveReasons().size() == 0 || getNegativeReasons().size() == 0) ? false : true;
    }

    public DriverInfo getDriverInfo() {
        return this.driverInfo;
    }

    public RideInformation getRideInformation() {
        return this.rideInformation;
    }

    public RideRatingReasonsResponse getRateReasonModel() {
        return this.rateReasonModel;
    }

    public int getServiceType() {
        RideInformation rideInformation2 = this.rideInformation;
        if (rideInformation2 != null) {
            return rideInformation2.getServiceType();
        }
        return 0;
    }
}
