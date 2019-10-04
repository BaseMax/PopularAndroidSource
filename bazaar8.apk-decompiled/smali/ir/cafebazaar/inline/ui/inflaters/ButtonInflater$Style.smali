.class public final enum Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;
.super Ljava/lang/Enum;
.source "ButtonInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

.field public static final enum primary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

.field public static final enum primarySmall:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

.field public static final enum secondary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

.field public static final enum secondarySmall:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;


# instance fields
.field public backgroundResId:I

.field public buttonLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    sget v1, Lf/a/a/d;->inline_button_primary:I

    sget v2, Lf/a/a/f;->inline_button:I

    const/4 v3, 0x0

    const-string v4, "primary"

    invoke-direct {v0, v4, v3, v1, v2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->primary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    sget v1, Lf/a/a/d;->inline_button_secondary:I

    sget v2, Lf/a/a/f;->inline_button:I

    const/4 v4, 0x1

    const-string v5, "secondary"

    invoke-direct {v0, v5, v4, v1, v2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->secondary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    sget v1, Lf/a/a/d;->inline_button_primary:I

    sget v2, Lf/a/a/f;->inline_button_small:I

    const/4 v5, 0x2

    const-string v6, "primarySmall"

    invoke-direct {v0, v6, v5, v1, v2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->primarySmall:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    .line 4
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    sget v1, Lf/a/a/d;->inline_button_secondary:I

    sget v2, Lf/a/a/f;->inline_button_small:I

    const/4 v6, 0x3

    const-string v7, "secondarySmall"

    invoke-direct {v0, v7, v6, v1, v2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->secondarySmall:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->primary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    aput-object v1, v0, v3

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->secondary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    aput-object v1, v0, v4

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->primarySmall:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    aput-object v1, v0, v5

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->secondarySmall:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    aput-object v1, v0, v6

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->a:[Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

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
    iput p3, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->backgroundResId:I

    .line 3
    iput p4, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->buttonLayoutId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->a:[Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    return-object v0
.end method


# virtual methods
.method public a(Lir/cafebazaar/inline/ui/Theme;)I
    .locals 2

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->backgroundResId:I

    sget v1, Lf/a/a/d;->inline_button_primary:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->g()I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->backgroundResId:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->buttonLayoutId:I

    return v0
.end method

.method public h()Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->primarySmall:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->primary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->secondarySmall:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    if-ne p0, v0, :cond_1

    .line 4
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->secondary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    return-object v0

    :cond_1
    return-object p0
.end method
