.class public final Lc/b/a/c/e;
.super Ljava/lang/Object;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/c/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/e$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Lc/b/a/c/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/e$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public volatile e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/c/d;

    invoke-direct {v0}, Lc/b/a/c/d;-><init>()V

    sput-object v0, Lc/b/a/c/e;->a:Lc/b/a/c/e$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lc/b/a/c/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lc/b/a/c/e$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lc/b/a/c/e;->d:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lc/b/a/c/e;->b:Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lc/b/a/c/e$a;

    iput-object p3, p0, Lc/b/a/c/e;->c:Lc/b/a/c/e$a;

    return-void
.end method

.method public static a()Lc/b/a/c/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/c/e$a<",
            "TT;>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lc/b/a/c/e;->a:Lc/b/a/c/e$a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lc/b/a/c/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lc/b/a/c/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/c/e;

    invoke-static {}, Lc/b/a/c/e;->a()Lc/b/a/c/e$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lc/b/a/c/e;-><init>(Ljava/lang/String;Ljava/lang/Object;Lc/b/a/c/e$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lc/b/a/c/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lc/b/a/c/e<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lc/b/a/c/e;

    invoke-static {}, Lc/b/a/c/e;->a()Lc/b/a/c/e$a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lc/b/a/c/e;-><init>(Ljava/lang/String;Ljava/lang/Object;Lc/b/a/c/e$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lc/b/a/c/e$a;)Lc/b/a/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lc/b/a/c/e$a<",
            "TT;>;)",
            "Lc/b/a/c/e<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lc/b/a/c/e;

    invoke-direct {v0, p0, p1, p2}, Lc/b/a/c/e;-><init>(Ljava/lang/String;Ljava/lang/Object;Lc/b/a/c/e$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/b/a/c/e;->c:Lc/b/a/c/e$a;

    invoke-virtual {p0}, Lc/b/a/c/e;->c()[B

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lc/b/a/c/e$a;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/c/e;->e:[B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/c/e;->d:Ljava/lang/String;

    sget-object v1, Lc/b/a/c/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lc/b/a/c/e;->e:[B

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/c/e;->e:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lc/b/a/c/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/b/a/c/e;

    .line 3
    iget-object v0, p0, Lc/b/a/c/e;->d:Ljava/lang/String;

    iget-object p1, p1, Lc/b/a/c/e;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/e;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
