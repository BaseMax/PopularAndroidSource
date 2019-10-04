.class public final Lf/a/a/b/a;
.super Ljava/lang/Object;
.source "InlineDependencyInjector.kt"


# static fields
.field public static a:Lf/a/a/c/a;

.field public static b:Lc/c/a/d/c/b;

.field public static c:Lc/c/a/e/d/u/a;

.field public static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lf/a/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/b/a;

    invoke-direct {v0}, Lf/a/a/b/a;-><init>()V

    sput-object v0, Lf/a/a/b/a;->e:Lf/a/a/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lf/a/a/b/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const-string v0, "wrContext"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final a(Landroid/content/Context;Lf/a/a/c/a;Lc/c/a/d/c/b;Lc/c/a/e/d/u/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineNetwork"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sput-object p2, Lf/a/a/b/a;->a:Lf/a/a/c/a;

    .line 3
    sput-object p3, Lf/a/a/b/a;->b:Lc/c/a/d/c/b;

    .line 4
    sput-object p4, Lf/a/a/b/a;->c:Lc/c/a/e/d/u/a;

    .line 5
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p2, Lf/a/a/b/a;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method
