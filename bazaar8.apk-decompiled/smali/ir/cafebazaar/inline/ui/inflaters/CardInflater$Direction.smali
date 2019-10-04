.class public final enum Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;
.super Ljava/lang/Enum;
.source "CardInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/CardInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

.field public static final enum normal:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

.field public static final enum reverse:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;


# instance fields
.field public layout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    sget v1, Lf/a/a/f;->inline_card_normal:I

    const/4 v2, 0x0

    const-string v3, "normal"

    invoke-direct {v0, v3, v2, v1}, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->normal:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    sget v1, Lf/a/a/f;->inline_card_reverse:I

    const/4 v3, 0x1

    const-string v4, "reverse"

    invoke-direct {v0, v4, v3, v1}, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->reverse:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->normal:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->reverse:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->a:[Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->layout:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->a:[Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    return-object v0
.end method


# virtual methods
.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->layout:I

    return v0
.end method
