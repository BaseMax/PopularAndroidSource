.class public Le/a/a/a/b$a;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/a/a/a/b$a;->a:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Le/a/a/a/b$a;->b:Landroid/app/Application;

    return-void
.end method

.method public static synthetic a(Le/a/a/a/b$a;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Le/a/a/a/b$a;->a()V

    return-void
.end method

.method public static synthetic a(Le/a/a/a/b$a;Le/a/a/a/b$b;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/a/b$a;->a(Le/a/a/a/b$b;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 3
    iget-object v0, p0, Le/a/a/a/b$a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 4
    iget-object v2, p0, Le/a/a/a/b$a;->b:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Le/a/a/a/b$b;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 5
    iget-object v0, p0, Le/a/a/a/b$a;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Le/a/a/a/a;

    invoke-direct {v0, p0, p1}, Le/a/a/a/a;-><init>(Le/a/a/a/b$a;Le/a/a/a/b$b;)V

    .line 7
    iget-object p1, p0, Le/a/a/a/b$a;->b:Landroid/app/Application;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 8
    iget-object p1, p0, Le/a/a/a/b$a;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
