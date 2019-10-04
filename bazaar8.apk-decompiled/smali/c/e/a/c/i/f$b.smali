.class public Lc/e/a/c/i/f$b;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/c/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lc/e/a/c/i/f;",
        "Lc/e/a/c/i/f$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/e/a/c/i/f;",
            "Lc/e/a/c/i/f$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/c/i/f$b;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Lc/e/a/c/i/f$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/e/a/c/i/f$b;->a:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Lc/e/a/c/i/f$d;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/c/i/f;)Lc/e/a/c/i/f$d;
    .locals 0

    .line 1
    invoke-interface {p1}, Lc/e/a/c/i/f;->getRevealInfo()Lc/e/a/c/i/f$d;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/a/c/i/f;Lc/e/a/c/i/f$d;)V
    .locals 0

    .line 2
    invoke-interface {p1, p2}, Lc/e/a/c/i/f;->setRevealInfo(Lc/e/a/c/i/f$d;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/c/i/f;

    invoke-virtual {p0, p1}, Lc/e/a/c/i/f$b;->a(Lc/e/a/c/i/f;)Lc/e/a/c/i/f$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/c/i/f;

    check-cast p2, Lc/e/a/c/i/f$d;

    invoke-virtual {p0, p1, p2}, Lc/e/a/c/i/f$b;->a(Lc/e/a/c/i/f;Lc/e/a/c/i/f$d;)V

    return-void
.end method
