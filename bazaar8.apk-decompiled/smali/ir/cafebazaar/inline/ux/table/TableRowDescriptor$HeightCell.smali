.class public final enum Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;
.super Ljava/lang/Enum;
.source "TableRowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ux/table/TableRowDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeightCell"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FIX:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

.field public static final enum WRAP:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

.field public static final synthetic a:[Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    const/4 v1, 0x0

    const-string v2, "WRAP"

    invoke-direct {v0, v2, v1}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;->WRAP:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    const/4 v2, 0x1

    const-string v3, "FIX"

    invoke-direct {v0, v3, v2}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;->FIX:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    sget-object v3, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;->WRAP:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    aput-object v3, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;->FIX:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    aput-object v1, v0, v2

    sput-object v0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;->a:[Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;->a:[Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    return-object v0
.end method
