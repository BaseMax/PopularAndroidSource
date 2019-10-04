.class public final synthetic Lc/e/c/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/c/b/i;


# static fields
.field public static final a:Lc/e/c/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/e/c/a/a/a/a;

    invoke-direct {v0}, Lc/e/c/a/a/a/a;-><init>()V

    sput-object v0, Lc/e/c/a/a/a/a;->a:Lc/e/c/b/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/e/c/b/f;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-class v0, Lcom/google/firebase/FirebaseApp;

    .line 2
    invoke-interface {p1, v0}, Lc/e/c/b/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    const-class v1, Landroid/content/Context;

    .line 3
    invoke-interface {p1, v1}, Lc/e/c/b/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lc/e/c/c/d;

    .line 4
    invoke-interface {p1, v2}, Lc/e/c/b/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/c/c/d;

    .line 5
    invoke-static {v0, v1, p1}, Lc/e/c/a/a/b;->a(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;Lc/e/c/c/d;)Lc/e/c/a/a/a;

    move-result-object p1

    return-object p1
.end method
