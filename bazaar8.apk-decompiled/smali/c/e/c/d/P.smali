.class public final synthetic Lc/e/c/d/P;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/j/a;


# instance fields
.field public final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/d/P;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lc/e/c/d/P;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/e/c/d/P;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/b/j/g;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/e/c/d/P;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lc/e/c/d/P;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/e/c/d/P;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/String;Ljava/lang/String;Lc/e/a/b/j/g;)Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method
