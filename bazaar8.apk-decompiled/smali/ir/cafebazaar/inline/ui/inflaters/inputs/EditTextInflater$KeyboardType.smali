.class public final enum Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;
.super Ljava/lang/Enum;
.source "EditTextInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyboardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public static final enum caps:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public static final enum decimal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public static final enum email:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public static final enum multiline:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public static final enum normal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public static final enum number:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public static final enum phone:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public static final enum signedDecimal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public static final enum signedNumber:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public static final enum uri:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;


# instance fields
.field public drawable:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "normal"

    invoke-direct {v0, v3, v1, v2}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->normal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    const-string v3, "multiline"

    const v4, 0x20001

    invoke-direct {v0, v3, v2, v4}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->multiline:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    const/4 v3, 0x2

    const-string v4, "number"

    invoke-direct {v0, v4, v3, v3}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->number:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    .line 4
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    const/4 v4, 0x3

    const-string v5, "signedNumber"

    const/16 v6, 0x1002

    invoke-direct {v0, v5, v4, v6}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->signedNumber:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    .line 5
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    const/4 v5, 0x4

    const-string v6, "decimal"

    const/16 v7, 0x2002

    invoke-direct {v0, v6, v5, v7}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->decimal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    .line 6
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    const/4 v6, 0x5

    const-string v7, "signedDecimal"

    const/16 v8, 0x3002

    invoke-direct {v0, v7, v6, v8}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->signedDecimal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    .line 7
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    sget v7, Lf/a/a/d;->ic_phone:I

    const/4 v8, 0x6

    const-string v9, "phone"

    invoke-direct {v0, v9, v8, v4, v7}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->phone:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    .line 8
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    const/4 v7, 0x7

    const-string v9, "caps"

    const/16 v10, 0x1001

    invoke-direct {v0, v9, v7, v10}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->caps:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    .line 9
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    sget v9, Lf/a/a/d;->ic_email:I

    const/16 v10, 0x8

    const-string v11, "email"

    const/16 v12, 0x21

    invoke-direct {v0, v11, v10, v12, v9}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->email:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    .line 10
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    sget v9, Lf/a/a/d;->ic_link:I

    const/16 v11, 0x9

    const-string v12, "uri"

    const/16 v13, 0x11

    invoke-direct {v0, v12, v11, v13, v9}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->uri:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    const/16 v0, 0xa

    .line 11
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    sget-object v9, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->normal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    aput-object v9, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->multiline:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->number:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    aput-object v1, v0, v3

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->signedNumber:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    aput-object v1, v0, v4

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->decimal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    aput-object v1, v0, v5

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->signedDecimal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    aput-object v1, v0, v6

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->phone:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    aput-object v1, v0, v8

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->caps:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    aput-object v1, v0, v7

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->email:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    aput-object v1, v0, v10

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->uri:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    aput-object v1, v0, v11

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->a:[Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;-><init>(Ljava/lang/String;III)V

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
    iput p3, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->type:I

    .line 3
    iput p4, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->drawable:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->a:[Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    return-object v0
.end method


# virtual methods
.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->drawable:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->type:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->number:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->signedNumber:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->decimal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->signedDecimal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
