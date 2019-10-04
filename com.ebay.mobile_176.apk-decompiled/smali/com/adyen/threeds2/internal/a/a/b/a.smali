.class public Lcom/adyen/threeds2/internal/a/a/b/a;
.super Lcom/adyen/threeds2/internal/a/a/b/k;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/adyen/threeds2/internal/a/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

.field private final b:Lcom/adyen/threeds2/internal/a/a/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a$1;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/a/b/a$1;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/k;-><init>(Landroid/os/Parcel;)V

    .line 99
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->a(I)Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->b:Lcom/adyen/threeds2/internal/a/a/b/a/a;
    :try_end_0
    .catch Lcom/adyen/threeds2/internal/g/a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/g/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/k;-><init>(Lorg/json/JSONObject;)V

    const/16 v0, 0x4e

    .line 83
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->a(I)Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    const/16 v0, 0x4f

    .line 84
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/a;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->b:Lcom/adyen/threeds2/internal/a/a/b/a/a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x50

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/adyen/threeds2/internal/a/a/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    const/16 v0, 0x4b

    .line 57
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->a(I)Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object v1

    .line 64
    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a$2;->a:[I

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 75
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :pswitch_0
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/f;

    invoke-direct {v0, p0}, Lcom/adyen/threeds2/internal/a/a/b/f;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 71
    :pswitch_1
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/n;

    invoke-direct {v0, p0}, Lcom/adyen/threeds2/internal/a/a/b/n;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 69
    :pswitch_2
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/o;

    invoke-direct {v0, p0}, Lcom/adyen/threeds2/internal/a/a/b/o;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 66
    :pswitch_3
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/q;

    invoke-direct {v0, p0}, Lcom/adyen/threeds2/internal/a/a/b/q;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 59
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x4c

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p0, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/a/a/b/a/b;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    return-object v0
.end method

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

    if-eqz p1, :cond_4

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/a;

    .line 117
    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    iget-object v3, p1, Lcom/adyen/threeds2/internal/a/a/b/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    if-eq v2, v3, :cond_2

    return v1

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->b:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    iget-object p1, p1, Lcom/adyen/threeds2/internal/a/a/b/a;->b:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->b:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->b:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 137
    iget-object p2, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->a:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object p2, p0, Lcom/adyen/threeds2/internal/a/a/b/a;->b:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
