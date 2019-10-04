.class public final synthetic Lc/e/c/d/q;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/c/b/i;


# static fields
.field public static final a:Lc/e/c/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/e/c/d/q;

    invoke-direct {v0}, Lc/e/c/d/q;-><init>()V

    sput-object v0, Lc/e/c/d/q;->a:Lc/e/c/b/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/e/c/b/f;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 2
    invoke-interface {p1, v1}, Lc/e/c/b/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    const-class v2, Lc/e/c/c/d;

    .line 3
    invoke-interface {p1, v2}, Lc/e/c/b/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/c/c/d;

    const-class v3, Lc/e/c/h/g;

    .line 4
    invoke-interface {p1, v3}, Lc/e/c/b/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/c/h/g;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lc/e/c/c/d;Lc/e/c/h/g;)V

    return-object v0
.end method
