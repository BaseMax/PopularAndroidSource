.class public Ll/B$a;
.super Lj/O;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Lj/O;

.field public final b:Lj/F;


# direct methods
.method public constructor <init>(Lj/O;Lj/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/O;-><init>()V

    .line 2
    iput-object p1, p0, Ll/B$a;->a:Lj/O;

    .line 3
    iput-object p2, p0, Ll/B$a;->b:Lj/F;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Ll/B$a;->a:Lj/O;

    invoke-virtual {v0}, Lj/O;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lk/h;)V
    .locals 1

    .line 2
    iget-object v0, p0, Ll/B$a;->a:Lj/O;

    invoke-virtual {v0, p1}, Lj/O;->a(Lk/h;)V

    return-void
.end method

.method public b()Lj/F;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/B$a;->b:Lj/F;

    return-object v0
.end method
