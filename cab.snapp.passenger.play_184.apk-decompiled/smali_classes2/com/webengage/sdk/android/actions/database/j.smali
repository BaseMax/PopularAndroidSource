.class public Lcom/webengage/sdk/android/actions/database/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/actions/database/s;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/webengage/sdk/android/actions/database/m;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/webengage/sdk/android/actions/database/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/database/j;->b:Lcom/webengage/sdk/android/actions/database/m;

    return-void
.end method

.method private a()Z
    .locals 4

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/database/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/i;->c()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/r;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/database/j;->b:Lcom/webengage/sdk/android/actions/database/m;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/webengage/sdk/android/actions/database/i;->a(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/webengage/sdk/android/actions/database/m;->a(Ljava/util/ArrayList;)Z

    add-int/lit8 v1, v1, -0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/l;)Z
    .locals 0

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/database/j;->a()Z

    move-result p1

    return p1
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/webengage/sdk/android/l;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/database/j;->a()Z

    move-result p1

    return p1
.end method
