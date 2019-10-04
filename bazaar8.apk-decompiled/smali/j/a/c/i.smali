.class public final Lj/a/c/i;
.super Lj/S;
.source "RealResponseBody.java"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Lk/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLk/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/S;-><init>()V

    .line 2
    iput-object p1, p0, Lj/a/c/i;->b:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lj/a/c/i;->c:J

    .line 4
    iput-object p4, p0, Lj/a/c/i;->d:Lk/i;

    return-void
.end method


# virtual methods
.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lj/a/c/i;->c:J

    return-wide v0
.end method

.method public v()Lj/F;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a/c/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj/F;->b(Ljava/lang/String;)Lj/F;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public w()Lk/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a/c/i;->d:Lk/i;

    return-object v0
.end method
