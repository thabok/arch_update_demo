IDT_ButtonStatus = Simulink.AliasType;
IDT_ButtonStatus.Description = '';
IDT_ButtonStatus.DataScope = 'Auto';
IDT_ButtonStatus.HeaderFile = 'Rte_Type.h';
IDT_ButtonStatus.BaseType = 'boolean';

IDT_SeatStatus = Simulink.AliasType;
IDT_SeatStatus.Description = '';
IDT_SeatStatus.DataScope = 'Auto';
IDT_SeatStatus.HeaderFile = 'Rte_Type.h';
IDT_SeatStatus.BaseType = 'boolean';

IDT_Temperature = Simulink.AliasType;
IDT_Temperature.Description = '';
IDT_Temperature.DataScope = 'Auto';
IDT_Temperature.HeaderFile = 'Rte_Type.h';
% IDT_Temperature.BaseType = 'uint8';
IDT_Temperature.BaseType = 'single';

P_IDT_ButtonStatus = Simulink.Parameter;
P_IDT_ButtonStatus.Value = 0;
P_IDT_ButtonStatus.CoderInfo.StorageClass = 'Auto';
P_IDT_ButtonStatus.Description = '';
P_IDT_ButtonStatus.DataType = 'IDT_ButtonStatus';
P_IDT_ButtonStatus.Min = [];
P_IDT_ButtonStatus.Max = [];
P_IDT_ButtonStatus.DocUnits = '';

P_IDT_Temperature = Simulink.Parameter;
P_IDT_Temperature.Value = 0;
P_IDT_Temperature.CoderInfo.StorageClass = 'Auto';
P_IDT_Temperature.Description = '';
P_IDT_Temperature.DataType = 'IDT_Temperature';
P_IDT_Temperature.Min = [];
P_IDT_Temperature.Max = [];
P_IDT_Temperature.DocUnits = '';

TemperatureRanges_Low = AUTOSAR.Parameter;
TemperatureRanges_Low.Value = 36;
TemperatureRanges_Low.CoderInfo.StorageClass = 'Custom';
TemperatureRanges_Low.CoderInfo.Alias = '';
TemperatureRanges_Low.CoderInfo.Alignment = -1;
TemperatureRanges_Low.CoderInfo.CustomStorageClass = ...
  'CalPrm';
TemperatureRanges_Low.CoderInfo.CustomAttributes.HeaderFile = '';
TemperatureRanges_Low.CoderInfo.CustomAttributes.ElementName = ...
  'Low';
TemperatureRanges_Low.CoderInfo.CustomAttributes.PortName = ...
  'TemperatureRanges';
TemperatureRanges_Low.CoderInfo.CustomAttributes.InterfacePath = ...
  '/Interfaces/IF_TemperatureValues';
TemperatureRanges_Low.CoderInfo.CustomAttributes.CalibrationComponent = '';
TemperatureRanges_Low.CoderInfo.CustomAttributes.ProviderPortName = '';
TemperatureRanges_Low.Description = '';
TemperatureRanges_Low.DataType = 'IDT_Temperature';
TemperatureRanges_Low.Min = [];
TemperatureRanges_Low.Max = [];
TemperatureRanges_Low.DocUnits = '';
TemperatureRanges_Low.SwCalibrationAccess = 'ReadWrite';
TemperatureRanges_Low.DisplayFormat = '';

TemperatureRanges_Medium = AUTOSAR.Parameter;
TemperatureRanges_Medium.Value = 40.5;
TemperatureRanges_Medium.CoderInfo.StorageClass = 'Custom';
TemperatureRanges_Medium.CoderInfo.Alias = '';
TemperatureRanges_Medium.CoderInfo.Alignment = -1;
TemperatureRanges_Medium.CoderInfo.CustomStorageClass = ...
  'CalPrm';
TemperatureRanges_Medium.CoderInfo.CustomAttributes.HeaderFile = '';
TemperatureRanges_Medium.CoderInfo.CustomAttributes.ElementName = ...
  'Medium';
TemperatureRanges_Medium.CoderInfo.CustomAttributes.PortName = ...
  'TemperatureRanges';
TemperatureRanges_Medium.CoderInfo.CustomAttributes.InterfacePath = ...
  '/Interfaces/IF_TemperatureValues';
TemperatureRanges_Medium.CoderInfo.CustomAttributes.CalibrationComponent = '';
TemperatureRanges_Medium.CoderInfo.CustomAttributes.ProviderPortName = '';
TemperatureRanges_Medium.Description = '';
TemperatureRanges_Medium.DataType = 'IDT_Temperature';
TemperatureRanges_Medium.Min = [];
TemperatureRanges_Medium.Max = [];
TemperatureRanges_Medium.DocUnits = '';
TemperatureRanges_Medium.SwCalibrationAccess = 'ReadWrite';
TemperatureRanges_Medium.DisplayFormat = '';

TemperatureRanges_High = AUTOSAR.Parameter;
TemperatureRanges_High.Value = 45;
TemperatureRanges_High.CoderInfo.StorageClass = 'Custom';
TemperatureRanges_High.CoderInfo.Alias = '';
TemperatureRanges_High.CoderInfo.Alignment = -1;
TemperatureRanges_High.CoderInfo.CustomStorageClass = ...
  'CalPrm';
TemperatureRanges_High.CoderInfo.CustomAttributes.HeaderFile = '';
TemperatureRanges_High.CoderInfo.CustomAttributes.ElementName = ...
  'High';
TemperatureRanges_High.CoderInfo.CustomAttributes.PortName = ...
  'TemperatureRanges';
TemperatureRanges_High.CoderInfo.CustomAttributes.InterfacePath = ...
  '/Interfaces/IF_TemperatureValues';
TemperatureRanges_High.CoderInfo.CustomAttributes.CalibrationComponent = '';
TemperatureRanges_High.CoderInfo.CustomAttributes.ProviderPortName = '';
TemperatureRanges_High.Description = '';
TemperatureRanges_High.DataType = 'IDT_Temperature';
TemperatureRanges_High.Min = [];
TemperatureRanges_High.Max = [];
TemperatureRanges_High.DocUnits = '';
TemperatureRanges_High.SwCalibrationAccess = 'ReadWrite';
TemperatureRanges_High.DisplayFormat = '';

% for measurement point
mp_system_active = Simulink.Signal;
mp_system_active.CoderInfo.StorageClass = 'ExportedGlobal';
mp_system_active.Description = '';
mp_system_active.DataType = 'boolean';

% RTE_OK = 0;
RTE_OK = Simulink.Parameter;
RTE_OK.Value = 0;
RTE_OK.CoderInfo.StorageClass = 'Custom';
RTE_OK.CoderInfo.CustomStorageClass = 'Define';
RTE_OK.Description = '';
RTE_OK.DataType = 'uint8';
RTE_OK.Min = [];
RTE_OK.Max = [];
RTE_OK.DocUnits = '';

try
    seat_heating_control_defineIntEnumTypes
end
