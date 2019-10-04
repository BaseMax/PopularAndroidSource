.class public Lcab/snapp/passenger/data/models/SideMenuData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABOUT_ICON:I = 0x7f0800ac

.field public static final ABOUT_TITLE:I = 0x7f12001c

.field public static final CREDIT_ICON:I = 0x7f0800d9

.field public static final CREDIT_TITLE:I = 0x7f120215

.field public static final EXIT_ICON:I = 0x7f0800f2

.field public static final EXIT_TITLE:I = 0x7f1200c8

.field public static final FAVORITES_ICON:I = 0x7f0800fd

.field public static final FAVORITES_TITLE:I = 0x7f1200d1

.field public static final MESSAGES_ICON:I = 0x7f08011d

.field public static final MESSAGES_TITLE:I = 0x7f120151

.field public static final PROFILE_DATA_ICON:I = 0x7f080152

.field public static final PROFILE_DATA_TITLE:I = 0x7f1201a9

.field public static final RIDE_HISTORY_ICON:I = 0x7f080157

.field public static final RIDE_HISTORY_TITLE:I = 0x7f1201da

.field public static final SETTINGS_ICON:I = 0x7f08015e

.field public static final SETTINGS_TITLE:I = 0x7f120211

.field public static final SUPPORT_ICON:I = 0x7f08017f

.field public static final SUPPORT_TITLE:I = 0x7f120258

.field public static final TRANSACTIONS_ICON:I = 0x7f080186

.field public static final TRANSACTIONS_TITLE:I = 0x7f12026a

.field public static final TYPE_ABOUT:I = 0x8

.field public static final TYPE_CREDIT:I = 0x0

.field public static final TYPE_EXIT:I = 0x9

.field public static final TYPE_FAVORITES:I = 0x4

.field public static final TYPE_MESSAGES:I = 0x5

.field public static final TYPE_PROFILE_DATA:I = 0x1

.field public static final TYPE_RIDE_HISTORY:I = 0x3

.field public static final TYPE_SETTINGS:I = 0x7

.field public static final TYPE_SUPPORT:I = 0x6

.field public static final TYPE_TRANSACTIONS:I = 0x2


# instance fields
.field private icon:I

.field private title:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lcab/snapp/passenger/data/models/SideMenuData;->title:I

    .line 179
    iput p2, p0, Lcab/snapp/passenger/data/models/SideMenuData;->icon:I

    .line 180
    iput p3, p0, Lcab/snapp/passenger/data/models/SideMenuData;->type:I

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 195
    iget v0, p0, Lcab/snapp/passenger/data/models/SideMenuData;->icon:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 185
    iget v0, p0, Lcab/snapp/passenger/data/models/SideMenuData;->title:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 205
    iget v0, p0, Lcab/snapp/passenger/data/models/SideMenuData;->type:I

    return v0
.end method

.method public setIcon(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcab/snapp/passenger/data/models/SideMenuData;->icon:I

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcab/snapp/passenger/data/models/SideMenuData;->title:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcab/snapp/passenger/data/models/SideMenuData;->type:I

    return-void
.end method
