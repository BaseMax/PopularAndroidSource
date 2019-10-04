.class public Lj/f$b;
.super Lj/S;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final b:Lj/a/a/h$c;

.field public final c:Lk/i;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lj/a/a/h$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/S;-><init>()V

    .line 2
    iput-object p1, p0, Lj/f$b;->b:Lj/a/a/h$c;

    .line 3
    iput-object p2, p0, Lj/f$b;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lj/f$b;->e:Ljava/lang/String;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lj/a/a/h$c;->b(I)Lk/z;

    move-result-object p2

    .line 6
    new-instance p3, Lj/g;

    invoke-direct {p3, p0, p2, p1}, Lj/g;-><init>(Lj/f$b;Lk/z;Lj/a/a/h$c;)V

    invoke-static {p3}, Lk/s;->a(Lk/z;)Lk/i;

    move-result-object p1

    iput-object p1, p0, Lj/f$b;->c:Lk/i;

    return-void
.end method


# virtual methods
.method public u()J
    .locals 3

    const-wide/16 v0, -0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lj/f$b;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lj/f$b;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public v()Lj/F;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/f$b;->d:Ljava/lang/String;

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
    iget-object v0, p0, Lj/f$b;->c:Lk/i;

    return-object v0
.end method
