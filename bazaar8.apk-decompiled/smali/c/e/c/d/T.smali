.class public final Lc/e/c/d/T;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/c/d/b;


# instance fields
.field public final a:Lcom/google/firebase/FirebaseApp;

.field public final b:Lc/e/c/d/o;

.field public final c:Lc/e/c/d/u;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lc/e/c/h/g;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lc/e/c/d/o;Ljava/util/concurrent/Executor;Lc/e/c/d/u;Lc/e/c/h/g;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lc/e/c/d/T;->a:Lcom/google/firebase/FirebaseApp;

    .line 6
    iput-object p2, p0, Lc/e/c/d/T;->b:Lc/e/c/d/o;

    .line 7
    iput-object p4, p0, Lc/e/c/d/T;->c:Lc/e/c/d/u;

    .line 8
    iput-object p3, p0, Lc/e/c/d/T;->d:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p5, p0, Lc/e/c/d/T;->e:Lc/e/c/h/g;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lc/e/c/d/o;Ljava/util/concurrent/Executor;Lc/e/c/h/g;)V
    .locals 6

    .line 1
    new-instance v4, Lc/e/c/d/u;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->c()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p2}, Lc/e/c/d/u;-><init>(Landroid/content/Context;Lc/e/c/d/o;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lc/e/c/d/T;-><init>(Lcom/google/firebase/FirebaseApp;Lc/e/c/d/o;Ljava/util/concurrent/Executor;Lc/e/c/d/u;Lc/e/c/h/g;)V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    const-string v0, "SERVICE_NOT_AVAILABLE"

    if-eqz p0, :cond_4

    const-string v1, "registration_id"

    .line 24
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string v1, "unregistered"

    .line 25
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-string v1, "error"

    .line 26
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RST"

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    .line 28
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected response: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "FirebaseInstanceId"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "INSTANCE_ID_RESET"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lc/e/c/d/T;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-static {p1}, Lc/e/c/d/T;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lc/e/a/b/j/g;)Lc/e/a/b/j/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/a/b/j/g<",
            "TT;>;)",
            "Lc/e/a/b/j/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {}, Lc/e/c/d/J;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lc/e/c/d/U;

    invoke-direct {v1, p0}, Lc/e/c/d/U;-><init>(Lc/e/c/d/T;)V

    .line 34
    invoke-virtual {p1, v0, v1}, Lc/e/a/b/j/g;->a(Ljava/util/concurrent/Executor;Lc/e/a/b/j/a;)Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/j/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lc/e/a/b/j/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "/topics/"

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v2, "gcm.topic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delete"

    const-string v2, "1"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lc/e/c/d/T;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/e/a/b/j/g;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lc/e/c/d/T;->b(Lc/e/a/b/j/g;)Lc/e/a/b/j/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/c/d/T;->a(Lc/e/a/b/j/g;)Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/e/a/b/j/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lc/e/a/b/j/g<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "scope"

    .line 10
    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "sender"

    .line 11
    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "subtype"

    .line 12
    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "appid"

    .line 13
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lc/e/c/d/T;->a:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->e()Lc/e/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/c/c;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gmp_app_id"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lc/e/c/d/T;->b:Lc/e/c/d/o;

    invoke-virtual {p1}, Lc/e/c/d/o;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gmsv"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "osv"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lc/e/c/d/T;->b:Lc/e/c/d/o;

    invoke-virtual {p1}, Lc/e/c/d/o;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_ver"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lc/e/c/d/T;->b:Lc/e/c/d/o;

    invoke-virtual {p1}, Lc/e/c/d/o;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_ver_name"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cliv"

    const-string p2, "fiid-12451000"

    .line 19
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lc/e/c/d/T;->e:Lc/e/c/h/g;

    invoke-interface {p1}, Lc/e/c/h/g;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Firebase-Client"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lc/e/a/b/j/h;

    invoke-direct {p1}, Lc/e/a/b/j/h;-><init>()V

    .line 22
    iget-object p2, p0, Lc/e/c/d/T;->d:Ljava/util/concurrent/Executor;

    new-instance p3, Lc/e/c/d/V;

    invoke-direct {p3, p0, p4, p1}, Lc/e/c/d/V;-><init>(Lc/e/c/d/T;Landroid/os/Bundle;Lc/e/a/b/j/h;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    invoke-virtual {p1}, Lc/e/a/b/j/h;->a()Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/j/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lc/e/a/b/j/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p3, p4, p2}, Lc/e/c/d/T;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/e/a/b/j/g;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lc/e/c/d/T;->b(Lc/e/a/b/j/g;)Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Landroid/os/Bundle;Lc/e/a/b/j/h;)V
    .locals 1

    .line 35
    :try_start_0
    iget-object v0, p0, Lc/e/c/d/T;->c:Lc/e/c/d/u;

    invoke-virtual {v0, p1}, Lc/e/c/d/u;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Lc/e/a/b/j/h;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p2, p1}, Lc/e/a/b/j/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lc/e/a/b/j/g;)Lc/e/a/b/j/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/j/g<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lc/e/a/b/j/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lc/e/c/d/T;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/e/c/d/X;

    invoke-direct {v1, p0}, Lc/e/c/d/X;-><init>(Lc/e/c/d/T;)V

    invoke-virtual {p1, v0, v1}, Lc/e/a/b/j/g;->a(Ljava/util/concurrent/Executor;Lc/e/a/b/j/a;)Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/j/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lc/e/a/b/j/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "/topics/"

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v2, "gcm.topic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lc/e/c/d/T;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/e/a/b/j/g;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lc/e/c/d/T;->b(Lc/e/a/b/j/g;)Lc/e/a/b/j/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/c/d/T;->a(Lc/e/a/b/j/g;)Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/c/d/T;->b:Lc/e/c/d/o;

    .line 2
    invoke-virtual {v0}, Lc/e/c/d/o;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
