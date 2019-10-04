.class public final synthetic Lc/e/c/d/O;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/c/d/v;


# instance fields
.field public final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/d/O;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lc/e/c/d/O;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/e/c/d/O;->c:Ljava/lang/String;

    iput-object p4, p0, Lc/e/c/d/O;->d:Ljava/lang/String;

    iput-object p5, p0, Lc/e/c/d/O;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lc/e/a/b/j/g;
    .locals 5

    iget-object v0, p0, Lc/e/c/d/O;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lc/e/c/d/O;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/e/c/d/O;->c:Ljava/lang/String;

    iget-object v3, p0, Lc/e/c/d/O;->d:Ljava/lang/String;

    iget-object v4, p0, Lc/e/c/d/O;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/j/g;

    move-result-object v0

    return-object v0
.end method
