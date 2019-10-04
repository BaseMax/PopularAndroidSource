package cab.snapp.passenger.data.models;

public class SideMenuData {

    /* renamed from: ABOUT_ICON */
    public static final int ic_about = 2131230892;

    /* renamed from: ABOUT_TITLE */
    public static final int about_snapp = 2131886108;

    /* renamed from: CREDIT_ICON */
    public static final int ic_credit_amount = 2131230937;

    /* renamed from: CREDIT_TITLE */
    public static final int side_menu_title_credit_amount = 2131886613;

    /* renamed from: EXIT_ICON */
    public static final int ic_exit = 2131230962;

    /* renamed from: EXIT_TITLE */
    public static final int exit = 2131886280;

    /* renamed from: FAVORITES_ICON */
    public static final int ic_favorites = 2131230973;

    /* renamed from: FAVORITES_TITLE */
    public static final int favorite_addresses = 2131886289;

    /* renamed from: MESSAGES_ICON */
    public static final int ic_messages = 2131231005;

    /* renamed from: MESSAGES_TITLE */
    public static final int messages = 2131886417;

    /* renamed from: PROFILE_DATA_ICON */
    public static final int ic_profile_data = 2131231058;

    /* renamed from: PROFILE_DATA_TITLE */
    public static final int profile = 2131886505;

    /* renamed from: RIDE_HISTORY_ICON */
    public static final int ic_ride_history = 2131231063;

    /* renamed from: RIDE_HISTORY_TITLE */
    public static final int ride_history = 2131886554;

    /* renamed from: SETTINGS_ICON */
    public static final int ic_setting = 2131231070;

    /* renamed from: SETTINGS_TITLE */
    public static final int settings = 2131886609;

    /* renamed from: SUPPORT_ICON */
    public static final int ic_support = 2131231103;

    /* renamed from: SUPPORT_TITLE */
    public static final int support = 2131886680;

    /* renamed from: TRANSACTIONS_ICON */
    public static final int ic_transactions = 2131231110;

    /* renamed from: TRANSACTIONS_TITLE */
    public static final int transactions = 2131886698;
    public static final int TYPE_ABOUT = 8;
    public static final int TYPE_CREDIT = 0;
    public static final int TYPE_EXIT = 9;
    public static final int TYPE_FAVORITES = 4;
    public static final int TYPE_MESSAGES = 5;
    public static final int TYPE_PROFILE_DATA = 1;
    public static final int TYPE_RIDE_HISTORY = 3;
    public static final int TYPE_SETTINGS = 7;
    public static final int TYPE_SUPPORT = 6;
    public static final int TYPE_TRANSACTIONS = 2;
    private int icon;
    private int title;
    private int type;

    public SideMenuData() {
    }

    public SideMenuData(int i, int i2, int i3) {
        this.title = i;
        this.icon = i2;
        this.type = i3;
    }

    public int getTitle() {
        return this.title;
    }

    public void setTitle(int i) {
        this.title = i;
    }

    public int getIcon() {
        return this.icon;
    }

    public void setIcon(int i) {
        this.icon = i;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }
}
