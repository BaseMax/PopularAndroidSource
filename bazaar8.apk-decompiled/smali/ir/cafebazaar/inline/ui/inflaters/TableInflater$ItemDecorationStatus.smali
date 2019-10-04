.class public final enum Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;
.super Ljava/lang/Enum;
.source "TableInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/TableInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemDecorationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

.field public static final enum betweenRows:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

.field public static final enum none:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

.field public static final enum normal:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

.field public static final enum table:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-direct {v0, v2, v1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->none:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    const/4 v2, 0x1

    const-string v3, "normal"

    invoke-direct {v0, v3, v2}, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->normal:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    const/4 v3, 0x2

    const-string v4, "table"

    invoke-direct {v0, v4, v3}, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->table:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    const/4 v4, 0x3

    const-string v5, "betweenRows"

    invoke-direct {v0, v5, v4}, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->betweenRows:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    sget-object v5, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->none:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    aput-object v5, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->normal:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->table:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->betweenRows:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    aput-object v1, v0, v4

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->a:[Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

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

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->a:[Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    return-object v0
.end method
