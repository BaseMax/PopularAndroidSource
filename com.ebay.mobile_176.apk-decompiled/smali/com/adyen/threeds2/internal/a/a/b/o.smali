.class public final Lcom/adyen/threeds2/internal/a/a/b/o;
.super Lcom/adyen/threeds2/internal/a/a/b/m;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/adyen/threeds2/internal/a/a/b/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/internal/a/a/b/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/o$1;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/a/b/o$1;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/m;-><init>(Landroid/os/Parcel;)V

    .line 72
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/p;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/m;-><init>(Lorg/json/JSONObject;)V

    const/16 v0, 0x9e

    .line 54
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/adyen/threeds2/internal/a/a/b/p;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

    .line 56
    iget-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 v0, 0x9f

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 60
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0xa0

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

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    invoke-super {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 87
    :cond_2
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/o;

    .line 89
    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

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

    .line 94
    invoke-super {p0}, Lcom/adyen/threeds2/internal/a/a/b/m;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/internal/a/a/b/p;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/adyen/threeds2/internal/a/a/b/m;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    iget-object p2, p0, Lcom/adyen/threeds2/internal/a/a/b/o;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
