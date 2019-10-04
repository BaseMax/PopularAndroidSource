.class public final Lc/e/a/b/g/f/b$b;
.super Lc/e/a/b/g/f/jd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/e/a/b/h/b/Da;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Da;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/jd;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/g/f/b$b;->a:Lc/e/a/b/h/b/Da;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/b$b;->a:Lc/e/a/b/h/b/Da;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lc/e/a/b/h/b/Da;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final x()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/b$b;->a:Lc/e/a/b/h/b/Da;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
