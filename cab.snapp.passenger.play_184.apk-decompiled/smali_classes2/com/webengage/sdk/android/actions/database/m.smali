.class Lcom/webengage/sdk/android/actions/database/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/actions/database/s;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/m;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/m;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/l;)Z
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/database/m;->a(Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/webengage/sdk/android/l;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/webengage/sdk/android/af;->e:Lcom/webengage/sdk/android/af;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/database/m;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/m;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method
