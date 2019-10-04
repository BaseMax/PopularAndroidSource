.class public final Lb/w/g$a;
.super Ljava/lang/Object;
.source "NavArgument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/w/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/w/g$a;->b:Z

    .line 3
    iput-boolean v0, p0, Lb/w/g$a;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lb/w/I;)Lb/w/g$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/w/I<",
            "*>;)",
            "Lb/w/g$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/w/g$a;->a:Lb/w/I;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lb/w/g$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lb/w/g$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lb/w/g$a;->d:Z

    return-object p0
.end method

.method public a(Z)Lb/w/g$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lb/w/g$a;->b:Z

    return-object p0
.end method

.method public a()Lb/w/g;
    .locals 5

    .line 5
    iget-object v0, p0, Lb/w/g$a;->a:Lb/w/I;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lb/w/g$a;->c:Ljava/lang/Object;

    invoke-static {v0}, Lb/w/I;->a(Ljava/lang/Object;)Lb/w/I;

    move-result-object v0

    iput-object v0, p0, Lb/w/g$a;->a:Lb/w/I;

    .line 7
    :cond_0
    new-instance v0, Lb/w/g;

    iget-object v1, p0, Lb/w/g$a;->a:Lb/w/I;

    iget-boolean v2, p0, Lb/w/g$a;->b:Z

    iget-object v3, p0, Lb/w/g$a;->c:Ljava/lang/Object;

    iget-boolean v4, p0, Lb/w/g$a;->d:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lb/w/g;-><init>(Lb/w/I;ZLjava/lang/Object;Z)V

    return-object v0
.end method
