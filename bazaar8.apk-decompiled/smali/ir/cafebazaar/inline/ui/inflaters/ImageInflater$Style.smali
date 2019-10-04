.class public final enum Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;
.super Ljava/lang/Enum;
.source "ImageInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/ImageInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

.field public static final enum avatar:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

.field public static final enum normal:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

.field public static final enum roundbox:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;


# instance fields
.field public layout:I

.field public radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    sget v1, Lf/a/a/f;->inline_image:I

    const/4 v2, 0x0

    const-string v3, "normal"

    invoke-direct {v0, v3, v2, v1, v2}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->normal:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    sget v1, Lf/a/a/f;->inline_image_margined:I

    const/4 v3, 0x1

    const-string v4, "roundbox"

    const/16 v5, 0x18

    invoke-direct {v0, v4, v3, v1, v5}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->roundbox:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    sget v1, Lf/a/a/f;->inline_image_margined:I

    const/4 v4, 0x2

    const-string v5, "avatar"

    const v6, 0x186a0

    invoke-direct {v0, v5, v4, v1, v6}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->avatar:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->normal:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->roundbox:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    aput-object v1, v0, v3

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->avatar:Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    aput-object v1, v0, v4

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->a:[Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->layout:I

    .line 3
    iput p4, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->radius:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->a:[Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;

    return-object v0
.end method


# virtual methods
.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->layout:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/ImageInflater$Style;->radius:I

    return v0
.end method
