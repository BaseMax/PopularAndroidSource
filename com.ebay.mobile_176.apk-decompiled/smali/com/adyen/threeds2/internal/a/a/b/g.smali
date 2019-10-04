.class public final Lcom/adyen/threeds2/internal/a/a/b/g;
.super Lcom/adyen/threeds2/internal/a/a/b/k;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/adyen/threeds2/internal/a/a/b/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/g$1;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/a/b/g$1;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/k;-><init>(Landroid/os/Parcel;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/g;->a(Landroid/os/Parcel;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    .line 85
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/g;->a(Landroid/os/Parcel;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    .line 86
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/g;->a(Landroid/os/Parcel;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/k;-><init>(Lorg/json/JSONObject;)V

    const/16 v0, 0x67

    .line 67
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/g;->g(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    const/16 v0, 0x68

    .line 68
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/g;->g(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    const/16 v0, 0x69

    .line 69
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/g;->g(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

    .line 71
    iget-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Lcom/adyen/threeds2/internal/g/a;

    const/16 v0, 0x6a

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 1

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 58
    :try_start_0
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/g;

    invoke-direct {v0, p0}, Lcom/adyen/threeds2/internal/a/a/b/g;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/adyen/threeds2/internal/g/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x66

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, p1, p0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private a(Landroid/os/Parcel;Landroid/net/Uri;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

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

    if-eqz p1, :cond_8

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 98
    :cond_1
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/g;

    .line 100
    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    iget-object v3, p1, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 106
    :cond_5
    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

    iget-object p1, p1, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 124
    iget-object p2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->a:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/a/a/b/g;->a(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 125
    iget-object p2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->b:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/a/a/b/g;->a(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 126
    iget-object p2, p0, Lcom/adyen/threeds2/internal/a/a/b/g;->c:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/a/a/b/g;->a(Landroid/os/Parcel;Landroid/net/Uri;)V

    return-void
.end method
