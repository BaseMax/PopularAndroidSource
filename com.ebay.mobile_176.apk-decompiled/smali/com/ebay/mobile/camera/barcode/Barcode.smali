.class public Lcom/ebay/mobile/camera/barcode/Barcode;
.super Ljava/lang/Object;
.source "Barcode.java"


# static fields
.field public static final CODE128:Ljava/lang/String; = "128"

.field public static final DATAMATRIX:Ljava/lang/String; = "DMX"

.field public static final EAN:Ljava/lang/String; = "EAN"

.field public static final OTHER:Ljava/lang/String; = "OTH"

.field public static final QRCODE:Ljava/lang/String; = "QRC"

.field public static final UPC:Ljava/lang/String; = "UPC"


# instance fields
.field private final type:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;)V
    .locals 1
    .param p1    # Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->getRawValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->getFormat()I

    move-result p1

    invoke-static {p1}, Lcom/ebay/mobile/camera/barcode/Barcode;->getTypeFromFormat(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->type:Ljava/lang/String;

    return-void
.end method

.method static getTypeFromFormat(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    const/16 v0, 0x400

    if-eq p0, v0, :cond_0

    const-string p0, "OTH"

    return-object p0

    :cond_0
    const-string p0, "UPC"

    return-object p0

    :cond_1
    const-string p0, "QRC"

    return-object p0

    :cond_2
    const-string p0, "EAN"

    return-object p0

    :cond_3
    const-string p0, "DMX"

    return-object p0

    :cond_4
    const-string p0, "128"

    return-object p0
.end method

.method private stripLeadingFnc1()Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    const-string v1, "]C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "]C1"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    const-string v1, "]C1"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getTrackingNumber()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    const-string v1, "\\u001d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMX"

    .line 72
    iget-object v2, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    .line 73
    aget-object v0, v0, v2

    goto :goto_0

    .line 75
    :cond_1
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public getTrackingNumberAuPost()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/barcode/Barcode;->getTrackingNumber()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "91"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "91"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "91"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "128"

    .line 43
    iget-object v1, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ebay/mobile/camera/barcode/Barcode;->stripLeadingFnc1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public isCarrierAuPost()Z
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/barcode/Barcode;->getTrackingNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "128"

    .line 108
    iget-object v2, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DMX"

    iget-object v2, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/camera/barcode/Barcode;->value:Ljava/lang/String;

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "01"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "91"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "91"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
