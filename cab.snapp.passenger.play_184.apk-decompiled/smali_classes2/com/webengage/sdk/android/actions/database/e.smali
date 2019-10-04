.class Lcom/webengage/sdk/android/actions/database/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/actions/database/s;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/database/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/i;->c()I

    move-result v0

    return v0
.end method

.method a(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/webengage/sdk/android/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/database/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/actions/database/i;->a(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/webengage/sdk/android/l;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/database/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/actions/database/i;->a(Lcom/webengage/sdk/android/l;)J

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " successfully Logged"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebEngage"

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/webengage/sdk/android/l;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/l;

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/database/e;->a(Lcom/webengage/sdk/android/l;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
