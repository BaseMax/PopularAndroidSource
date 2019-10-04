.class public final Lc/e/a/b/g/f/_b;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/g/f/Zb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lc/e/a/b/g/f/nb;

    sget v0, Lc/e/a/b/g/f/nb$e;->d:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
