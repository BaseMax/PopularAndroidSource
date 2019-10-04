.class public final Lc/c/a/h/b/Xa;
.super Ljava/lang/Object;
.source "IntervalConstantsModule_LocationUpdateIntervalFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/h/b/Wa;


# direct methods
.method public constructor <init>(Lc/c/a/h/b/Wa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/h/b/Xa;->a:Lc/c/a/h/b/Wa;

    return-void
.end method

.method public static a(Lc/c/a/h/b/Wa;)Lc/c/a/h/b/Xa;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/h/b/Xa;

    invoke-direct {v0, p0}, Lc/c/a/h/b/Xa;-><init>(Lc/c/a/h/b/Wa;)V

    return-object v0
.end method

.method public static b(Lc/c/a/h/b/Wa;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-static {p0}, Lc/c/a/h/b/Xa;->c(Lc/c/a/h/b/Wa;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lc/c/a/h/b/Wa;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/Wa;->a()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/Xa;->a:Lc/c/a/h/b/Wa;

    invoke-static {v0}, Lc/c/a/h/b/Xa;->b(Lc/c/a/h/b/Wa;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/Xa;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
