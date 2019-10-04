.class public enum Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;
.super Ljava/lang/Enum;
.source "TextInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/TextInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

.field public static final enum centered:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

.field public static final enum centeredTitle:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

.field public static final enum normal:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

.field public static final enum quoted:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

.field public static final enum title:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    const/4 v1, 0x0

    const-string v2, "normal"

    invoke-direct {v0, v2, v1}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->normal:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$1;

    const/4 v2, 0x1

    const-string v3, "title"

    invoke-direct {v0, v3, v2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->title:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$2;

    const/4 v3, 0x2

    const-string v4, "centered"

    invoke-direct {v0, v4, v3}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->centered:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    .line 4
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$3;

    const/4 v4, 0x3

    const-string v5, "centeredTitle"

    invoke-direct {v0, v5, v4}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->centeredTitle:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    .line 5
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$4;

    const/4 v5, 0x4

    const-string v6, "quoted"

    invoke-direct {v0, v6, v5}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->quoted:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    sget-object v6, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->normal:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    aput-object v6, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->title:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->centered:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    aput-object v1, v0, v3

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->centeredTitle:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    aput-object v1, v0, v4

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->quoted:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    aput-object v1, v0, v5

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->a:[Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILf/a/a/e/b/S;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->a:[Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/TextView;Landroid/content/res/Resources;)V
    .locals 0

    return-void
.end method
