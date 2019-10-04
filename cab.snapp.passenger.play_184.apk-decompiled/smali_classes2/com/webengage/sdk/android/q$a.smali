.class public Lcom/webengage/sdk/android/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/location/Location;

.field c:I

.field final synthetic d:Lcom/webengage/sdk/android/q;


# direct methods
.method public constructor <init>(Lcom/webengage/sdk/android/q;Ljava/lang/String;Landroid/location/Location;I)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/q$a;->d:Lcom/webengage/sdk/android/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/webengage/sdk/android/q$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/webengage/sdk/android/q$a;->b:Landroid/location/Location;

    iput-object p2, p0, Lcom/webengage/sdk/android/q$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/webengage/sdk/android/q$a;->b:Landroid/location/Location;

    iput p4, p0, Lcom/webengage/sdk/android/q$a;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/q$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/q$a;->b:Landroid/location/Location;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/q$a;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/webengage/sdk/android/q$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/webengage/sdk/android/q$a;

    iget-object v0, p0, Lcom/webengage/sdk/android/q$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/webengage/sdk/android/q$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/q$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeoFenceTransition: {\n id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/webengage/sdk/android/q$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/webengage/sdk/android/q$a;->b:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Transition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/webengage/sdk/android/q$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
