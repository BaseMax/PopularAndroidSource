.class public Lc/b/a/c/b/r$d;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lc/b/a/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/t<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lc/b/a/g/h;


# direct methods
.method public constructor <init>(Lc/b/a/g/h;Lc/b/a/c/b/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/h;",
            "Lc/b/a/c/b/t<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/b/r$d;->b:Lc/b/a/g/h;

    .line 3
    iput-object p2, p0, Lc/b/a/c/b/r$d;->a:Lc/b/a/c/b/t;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/r$d;->a:Lc/b/a/c/b/t;

    iget-object v1, p0, Lc/b/a/c/b/r$d;->b:Lc/b/a/g/h;

    invoke-virtual {v0, v1}, Lc/b/a/c/b/t;->d(Lc/b/a/g/h;)V

    return-void
.end method
