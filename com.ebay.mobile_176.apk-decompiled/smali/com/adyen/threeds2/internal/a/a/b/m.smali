.class public Lcom/adyen/threeds2/internal/a/a/b/m;
.super Lcom/adyen/threeds2/internal/a/a/b/l;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/adyen/threeds2/internal/a/a/b/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/m$1;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/a/b/m$1;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/l;-><init>(Landroid/os/Parcel;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/m;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/l;-><init>(Lorg/json/JSONObject;)V

    const/16 v0, 0x97

    .line 52
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/m;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/m;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 54
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x98

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    invoke-super {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 81
    :cond_2
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/m;

    .line 83
    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/m;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/m;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/adyen/threeds2/internal/a/a/b/m;->a:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lcom/adyen/threeds2/internal/a/a/b/m;->a:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/adyen/threeds2/internal/a/a/b/l;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/m;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/m;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/adyen/threeds2/internal/a/a/b/l;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    iget-object p2, p0, Lcom/adyen/threeds2/internal/a/a/b/m;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
