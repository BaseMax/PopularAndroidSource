.class public final enum Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;
.super Ljava/lang/Enum;
.source "PageInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/PageInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

.field public static final enum bottom:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

.field public static final enum center:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

.field public static final enum top:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    const/4 v1, 0x0

    const-string v2, "bottom"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v1, v3}, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->bottom:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    const/4 v2, 0x1

    const-string v3, "center"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v2, v4}, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->center:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    const/4 v3, 0x2

    const-string v4, "top"

    const/16 v5, 0x30

    invoke-direct {v0, v4, v3, v5}, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->top:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    sget-object v4, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->bottom:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    aput-object v4, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->center:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->top:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    aput-object v1, v0, v3

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->a:[Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

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
    iput p3, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->a:[Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->id:I

    return v0
.end method
