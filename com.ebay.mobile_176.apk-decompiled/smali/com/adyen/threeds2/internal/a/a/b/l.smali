.class public Lcom/adyen/threeds2/internal/a/a/b/l;
.super Lcom/adyen/threeds2/internal/a/a/b/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/adyen/threeds2/internal/a/a/b/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/adyen/threeds2/internal/a/a/b/a/a;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/adyen/threeds2/internal/a/a/b/g;

.field private final k:Lcom/adyen/threeds2/internal/a/a/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/l$1;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/a/b/l$1;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/a;-><init>(Landroid/os/Parcel;)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->a:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->b:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->c:Ljava/lang/String;

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->d:Lcom/adyen/threeds2/internal/a/a/b/a/a;
    :try_end_0
    .catch Lcom/adyen/threeds2/internal/g/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->e:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->f:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->g:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->h:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->i:Ljava/lang/String;

    .line 111
    const-class v0, Lcom/adyen/threeds2/internal/a/a/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/internal/a/a/b/g;

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->j:Lcom/adyen/threeds2/internal/a/a/b/g;

    .line 112
    const-class v0, Lcom/adyen/threeds2/internal/a/a/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/g;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->k:Lcom/adyen/threeds2/internal/a/a/b/g;

    return-void

    :catch_0
    move-exception p1

    .line 104
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

    .line 71
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/a;-><init>(Lorg/json/JSONObject;)V

    const/16 v0, 0x8b

    .line 74
    :try_start_0
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/l;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->a:Ljava/lang/String;

    const/16 v0, 0x8c

    .line 75
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/l;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->b:Ljava/lang/String;

    const/16 v0, 0x8d

    .line 76
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/l;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->c:Ljava/lang/String;

    const/16 v0, 0x8e

    .line 77
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/l;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->d:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    const/16 v0, 0x8f

    .line 78
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/l;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->e:Ljava/lang/String;

    const/16 v0, 0x90

    .line 79
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/l;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->f:Ljava/lang/String;

    const/16 v0, 0x91

    .line 80
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/l;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->g:Ljava/lang/String;

    const/16 v0, 0x92

    .line 81
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/l;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->h:Ljava/lang/String;

    const/16 v0, 0x93

    .line 82
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/l;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->i:Ljava/lang/String;

    const/16 v0, 0x94

    .line 83
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->j:Lcom/adyen/threeds2/internal/a/a/b/g;

    const/16 v0, 0x95

    .line 84
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/g;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->k:Lcom/adyen/threeds2/internal/a/a/b/g;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    const/16 v1, 0x96

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-super {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 127
    :cond_2
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/l;

    .line 129
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/adyen/threeds2/internal/a/a/b/l;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adyen/threeds2/internal/l/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/adyen/threeds2/internal/a/a/b/l;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adyen/threeds2/internal/l/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 135
    :cond_4
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/adyen/threeds2/internal/a/a/b/l;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adyen/threeds2/internal/l/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 138
    :cond_5
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->d:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    iget-object v2, p1, Lcom/adyen/threeds2/internal/a/a/b/l;->d:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    if-eq v1, v2, :cond_6

    return v0

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/adyen/threeds2/internal/a/a/b/l;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/adyen/threeds2/internal/l/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 146
    invoke-super {p0}, Lcom/adyen/threeds2/internal/a/a/b/a;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 147
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 149
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 150
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->d:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->d:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 151
    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/adyen/threeds2/internal/a/a/b/g;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->j:Lcom/adyen/threeds2/internal/a/a/b/g;

    return-object v0
.end method

.method public k()Lcom/adyen/threeds2/internal/a/a/b/g;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->k:Lcom/adyen/threeds2/internal/a/a/b/g;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->d:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 162
    invoke-super {p0, p1, p2}, Lcom/adyen/threeds2/internal/a/a/b/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->d:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->j:Lcom/adyen/threeds2/internal/a/a/b/g;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/l;->k:Lcom/adyen/threeds2/internal/a/a/b/g;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
