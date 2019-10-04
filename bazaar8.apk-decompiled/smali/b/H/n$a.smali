.class public abstract Lb/H/n$a;
.super Ljava/lang/Object;
.source "WorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lb/H/n$a;",
        "W:",
        "Lb/H/n;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/UUID;

.field public c:Lb/H/a/c/o;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/H/n$a;->a:Z

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/H/n$a;->d:Ljava/util/Set;

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lb/H/n$a;->b:Ljava/util/UUID;

    .line 5
    new-instance v0, Lb/H/a/c/o;

    iget-object v1, p0, Lb/H/n$a;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/H/a/c/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lb/H/n$a;->c:Lb/H/a/c/o;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/H/n$a;->a(Ljava/lang/String;)Lb/H/n$a;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Lb/H/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/BackoffPolicy;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/H/n$a;->a:Z

    .line 2
    iget-object v0, p0, Lb/H/n$a;->c:Lb/H/a/c/o;

    iput-object p1, v0, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    .line 3
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lb/H/a/c/o;->a(J)V

    .line 4
    invoke-virtual {p0}, Lb/H/n$a;->c()Lb/H/n$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/H/b;)Lb/H/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/H/b;",
            ")TB;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lb/H/n$a;->c:Lb/H/a/c/o;

    iput-object p1, v0, Lb/H/a/c/o;->l:Lb/H/b;

    .line 6
    invoke-virtual {p0}, Lb/H/n$a;->c()Lb/H/n$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/H/d;)Lb/H/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/H/d;",
            ")TB;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lb/H/n$a;->c:Lb/H/a/c/o;

    iput-object p1, v0, Lb/H/a/c/o;->g:Lb/H/d;

    .line 8
    invoke-virtual {p0}, Lb/H/n$a;->c()Lb/H/n$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lb/H/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lb/H/n$a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lb/H/n$a;->c()Lb/H/n$a;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lb/H/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lb/H/n$a;->b()Lb/H/n;

    move-result-object v0

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lb/H/n$a;->b:Ljava/util/UUID;

    .line 13
    new-instance v1, Lb/H/a/c/o;

    iget-object v2, p0, Lb/H/n$a;->c:Lb/H/a/c/o;

    invoke-direct {v1, v2}, Lb/H/a/c/o;-><init>(Lb/H/a/c/o;)V

    iput-object v1, p0, Lb/H/n$a;->c:Lb/H/a/c/o;

    .line 14
    iget-object v1, p0, Lb/H/n$a;->c:Lb/H/a/c/o;

    iget-object v2, p0, Lb/H/n$a;->b:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lb/H/a/c/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public abstract b()Lb/H/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public abstract c()Lb/H/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method
