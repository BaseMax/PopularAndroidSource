.class public Lcab/snapp/passenger/data/models/ShowCaseItemDao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field activity:Landroid/app/Activity;

.field descTextColor:I

.field descTextSize:I

.field description:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field outerCircleColor:I

.field targetCircleColor:I

.field title:Ljava/lang/String;

.field titleTextColor:I

.field titleTextSize:I

.field typeface:Landroid/graphics/Typeface;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f06004d

    .line 17
    iput v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->outerCircleColor:I

    const v0, 0x7f06012a

    .line 18
    iput v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->targetCircleColor:I

    .line 19
    iput v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->titleTextColor:I

    const/16 v1, 0x19

    .line 20
    iput v1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->titleTextSize:I

    .line 21
    iput v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->descTextColor:I

    const/16 v0, 0xf

    .line 22
    iput v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->descTextSize:I

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 27
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDescTextColor()I
    .locals 1

    .line 117
    iget v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->descTextColor:I

    return v0
.end method

.method public getDescTextSize()I
    .locals 1

    .line 127
    iget v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->descTextSize:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 137
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getOuterCircleColor()I
    .locals 1

    .line 77
    iget v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->outerCircleColor:I

    return v0
.end method

.method public getTargetCircleColor()I
    .locals 1

    .line 87
    iget v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->targetCircleColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleTextColor()I
    .locals 1

    .line 97
    iget v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->titleTextColor:I

    return v0
.end method

.method public getTitleTextSize()I
    .locals 1

    .line 107
    iget v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->titleTextSize:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 67
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 37
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->view:Landroid/view/View;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setDescTextColor(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->descTextColor:I

    return-void
.end method

.method public setDescTextSize(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->descTextSize:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->description:Ljava/lang/String;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->handler:Landroid/os/Handler;

    return-void
.end method

.method public setOuterCircleColor(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->outerCircleColor:I

    return-void
.end method

.method public setTargetCircleColor(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->targetCircleColor:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->titleTextColor:I

    return-void
.end method

.method public setTitleTextSize(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->titleTextSize:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->view:Landroid/view/View;

    return-void
.end method
