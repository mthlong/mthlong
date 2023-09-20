# About me

- Name: Long
- Email: [mt.hlong.2000@gmail.com](mailto:mt.hlong.2000@gmail.com)
- Flutter engineer

## Weather in my city <Đà Nẵng city> 👋

{{ with $todayWeather := index .Weathers 0 }}

`{{ $todayWeather.City }}, VietNam - {{ formatDate $todayWeather.StartTime $todayWeather.Timezone }}`

<img src="{{ $todayWeather.Icon}}"/>

{{ $todayWeather.Condition }}

{{template "hourly-table" $todayWeather.HourlyWeathers}}

{{- end }}

<div align="right">

Updated at: {{formatTime .UpdatedAt}} 

</div>
