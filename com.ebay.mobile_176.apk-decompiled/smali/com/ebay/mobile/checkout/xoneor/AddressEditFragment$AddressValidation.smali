.class public final enum Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;
.super Ljava/lang/Enum;
.source "AddressEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddressValidation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

.field public static final enum BAD_CITY:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

.field public static final enum BAD_COUNTRY_CODE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

.field public static final enum BAD_NAME:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

.field public static final enum BAD_PHONE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

.field public static final enum BAD_POSTAL_CODE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

.field public static final enum BAD_STATE_OR_PROVINCE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

.field public static final enum BAD_STREET1:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

.field public static final enum BAD_STREET2:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;


# instance fields
.field private errorId:I

.field private resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1297
    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    const-string v1, "BAD_NAME"

    const/4 v2, 0x0

    const v3, 0x7f1210c7

    const v4, 0x7f0a009d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_NAME:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    .line 1298
    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    const-string v1, "BAD_STREET1"

    const v3, 0x7f1210ca

    const/4 v4, 0x1

    const v5, 0x7f0a0083

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_STREET1:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    .line 1299
    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    const-string v1, "BAD_STREET2"

    const/4 v5, 0x2

    const v6, 0x7f0a0086

    invoke-direct {v0, v1, v5, v3, v6}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_STREET2:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    .line 1300
    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    const-string v1, "BAD_CITY"

    const/4 v3, 0x3

    const v6, 0x7f1210c5

    const v7, 0x7f0a008e

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_CITY:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    .line 1301
    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    const-string v1, "BAD_STATE_OR_PROVINCE"

    const/4 v6, 0x4

    const v7, 0x7f1210c9

    const v8, 0x7f0a00ad

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_STATE_OR_PROVINCE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    .line 1302
    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    const-string v1, "BAD_COUNTRY_CODE"

    const/4 v7, 0x5

    const v8, 0x7f1210c6

    const v9, 0x7f0a0092

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_COUNTRY_CODE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    .line 1303
    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    const-string v1, "BAD_POSTAL_CODE"

    const/4 v8, 0x6

    const v9, 0x7f1210c4

    const v10, 0x7f0a00a6

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_POSTAL_CODE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    .line 1304
    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    const-string v1, "BAD_PHONE"

    const/4 v9, 0x7

    const v10, 0x7f1210c8

    const v11, 0x7f0a00a3

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_PHONE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    const/16 v0, 0x8

    .line 1295
    new-array v0, v0, [Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_NAME:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_STREET1:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_STREET2:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_CITY:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_STATE_OR_PROVINCE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_COUNTRY_CODE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_POSTAL_CODE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_PHONE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    aput-object v1, v0, v9

    sput-object v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->$VALUES:[Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1310
    iput p3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->errorId:I

    .line 1311
    iput p4, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->resId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;
    .locals 1

    .line 1295
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;
    .locals 1

    .line 1295
    sget-object v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->$VALUES:[Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    invoke-virtual {v0}, [Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    return-object v0
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .line 1316
    iget v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->errorId:I

    return v0
.end method

.method public getResId()I
    .locals 1

    .line 1321
    iget v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->resId:I

    return v0
.end method
