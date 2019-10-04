package cab.snapp.passenger.f;

import cab.snapp.passenger.play.R;

public final class d {
    public static int getIcon(String str) {
        if (str == null) {
            return R.drawable.ic_default_location_pin_gray_24dp;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -2138118120:
                if (str.equals("shop:mall")) {
                    c = 26;
                    break;
                }
                break;
            case -2110218209:
                if (str.equals("leisure:park")) {
                    c = 30;
                    break;
                }
                break;
            case -1936864013:
                if (str.equals("shop:supermarket")) {
                    c = 25;
                    break;
                }
                break;
            case -1656791980:
                if (str.equals("amenity:pharmacy")) {
                    c = 14;
                    break;
                }
                break;
            case -1636670959:
                if (str.equals("amenity:embassy")) {
                    c = 18;
                    break;
                }
                break;
            case -1515683720:
                if (str.equals("landuse:grass")) {
                    c = 31;
                    break;
                }
                break;
            case -1480165211:
                if (str.equals("tourism:hotel")) {
                    c = 27;
                    break;
                }
                break;
            case -1349391914:
                if (str.equals("amenity:theatre")) {
                    c = 17;
                    break;
                }
                break;
            case -1311861718:
                if (str.equals("tourism:guest_house")) {
                    c = 29;
                    break;
                }
                break;
            case -879159715:
                if (str.equals("amenity:bank")) {
                    c = 10;
                    break;
                }
                break;
            case -879130178:
                if (str.equals("amenity:cafe")) {
                    c = 1;
                    break;
                }
                break;
            case -792550409:
                if (str.equals("amenity:parking")) {
                    c = 9;
                    break;
                }
                break;
            case -358064364:
                if (str.equals("building:university")) {
                    c = 8;
                    break;
                }
                break;
            case 36508014:
                if (str.equals("building:hotel")) {
                    c = 20;
                    break;
                }
                break;
            case 166860026:
                if (str.equals("amenity:library")) {
                    c = 6;
                    break;
                }
                break;
            case 227538331:
                if (str.equals("landuse:forest")) {
                    c = ' ';
                    break;
                }
                break;
            case 451346078:
                if (str.equals("amenity:restaurant")) {
                    c = 4;
                    break;
                }
                break;
            case 598647520:
                if (str.equals("amenity:fast_food")) {
                    c = 2;
                    break;
                }
                break;
            case 777873402:
                if (str.equals("amenity:post_office")) {
                    c = 19;
                    break;
                }
                break;
            case 950092498:
                if (str.equals("amenity:collage")) {
                    c = 5;
                    break;
                }
                break;
            case 965073984:
                if (str.equals("building:hospital")) {
                    c = 13;
                    break;
                }
                break;
            case 982180141:
                if (str.equals("building:church")) {
                    c = 21;
                    break;
                }
                break;
            case 1272086226:
                if (str.equals("amenity:cinema")) {
                    c = 16;
                    break;
                }
                break;
            case 1274716361:
                if (str.equals("amenity:clinic")) {
                    c = 11;
                    break;
                }
                break;
            case 1274876310:
                if (str.equals("building:mosque")) {
                    c = 22;
                    break;
                }
                break;
            case 1359503230:
                if (str.equals("tourism:hostel")) {
                    c = 28;
                    break;
                }
                break;
            case 1435239162:
                if (str.equals("building:school")) {
                    c = 7;
                    break;
                }
                break;
            case 1440148873:
                if (str.equals("building:shrine")) {
                    c = 23;
                    break;
                }
                break;
            case 1553398114:
                if (str.equals("amenity:dentist")) {
                    c = 12;
                    break;
                }
                break;
            case 2022638903:
                if (str.equals("building:stadium")) {
                    c = 24;
                    break;
                }
                break;
            case 2097487512:
                if (str.equals("amenity:art_centre")) {
                    c = 15;
                    break;
                }
                break;
            case 2133390252:
                if (str.equals("aeroway:aerodrome")) {
                    c = 0;
                    break;
                }
                break;
            case 2144417227:
                if (str.equals("amenity:food_court")) {
                    c = 3;
                    break;
                }
                break;
        }
        int i = R.drawable.ic_park_gray_24dp;
        switch (c) {
            case 0:
                return R.drawable.ic_airport_gray_24dp;
            case 1:
                return R.drawable.ic_cafe_gray_24dp;
            case 2:
                return R.drawable.ic_fastfood_gray_24dp;
            case 3:
                return R.drawable.ic_foodcourt_gray_24dp;
            case 4:
                return R.drawable.ic_restaurant_gray_24dp;
            case 5:
                return R.drawable.ic_university_gray_24dp;
            case 6:
                return R.drawable.ic_library_gray_24dp;
            case 7:
            case 8:
                return R.drawable.ic_university_gray_24dp;
            case 9:
                return R.drawable.ic_parking_gray_24dp;
            case 10:
                return R.drawable.ic_government_gray_24dp;
            case 11:
            case 12:
            case 13:
                return R.drawable.ic_hospital_gray_24dp;
            case 14:
                return R.drawable.ic_pharmacy_gray_24dp;
            case 15:
                return R.drawable.ic_artcentre_gray_24dp;
            case 16:
            case 17:
                return R.drawable.ic_cinema_gray_24dp;
            case 18:
                return R.drawable.ic_embassy_gray_24dp;
            case 19:
                return R.drawable.ic_postoffice_gray_24dp;
            case 20:
                return R.drawable.ic_hotel_gray_24dp;
            case 21:
                return R.drawable.ic_church_gray_24dp;
            case 22:
                return R.drawable.ic_mosque_gray_24dp;
            case 23:
                return R.drawable.ic_shrine_gray_24dp;
            case 24:
                return R.drawable.ic_default_location_pin_gray_24dp;
            case 25:
                return R.drawable.ic_localstore_gray_24dp;
            case 26:
                return R.drawable.ic_mall_gray_24dp;
            case 27:
            case 28:
            case 29:
                return R.drawable.ic_hotel_gray_24dp;
            case 30:
            case 31:
                break;
            case ' ':
                i = R.drawable.ic_nature_gray_24dp;
                break;
            default:
                return R.drawable.ic_default_location_pin_gray_24dp;
        }
        return i;
    }
}
