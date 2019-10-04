.class public final enum Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;
.super Ljava/lang/Enum;
.source "CardInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/CardInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

.field public static final enum large:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

.field public static final enum normal:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

.field public static final enum small:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;


# instance fields
.field public imageRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    const/4 v1, 0x0

    const-string v2, "normal"

    const v3, 0x3eaaaaab

    invoke-direct {v0, v2, v1, v3}, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->normal:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    const/4 v2, 0x1

    const-string v3, "large"

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v2, v4}, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->large:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    const/4 v3, 0x2

    const-string v4, "small"

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v4, v3, v5}, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->small:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    sget-object v4, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->normal:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    aput-object v4, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->large:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->small:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    aput-object v1, v0, v3

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->a:[Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->imageRatio:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->a:[Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    return-object v0
.end method


# virtual methods
.method public f()F
    .locals 2

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->imageRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    return v1
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->imageRatio:F

    return v0
.end method
